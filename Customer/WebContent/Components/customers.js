$(document).ready(function()
{
	if ($("#alertSuccess").text().trim() == "")
	{
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});

//Save--------------------------------
$(document).on("click", "#btnSave", function(event)
{
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	
	// Form validation-------------------
	var status = validateCustomerForm();
	if (status != true)
	{
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	
	// If valid------------------------
	var type = ($("#hidCustomerIDSave").val() == "") ? "POST" : "PUT";
	
	$.ajax(
	{
		url : "CustomersAPI",
		type : type,
		data : $("#formCustomer").serialize(),
		dataType : "text",
		complete : function(response, status)
		{
			onCustomerSaveComplete(response.responseText, status);
		}
		});
	
});

function onCustomerSaveComplete(response, status)
{
	if (status == "success")
	{
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success")
		{
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divCustomersGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error")
		{
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error")
	{
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else
	{
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidCustomerIDSave").val("");
	$("#formCustomer")[0].reset();
}

//remove
$(document).on("click", ".btnRemove", function(event)
		{
		$.ajax(
		{
		url : "CustomersAPI",
		type : "DELETE",
		data : "customerID=" + $(this).data("customerid"),
		dataType : "text",
		complete : function(response, status)
		{
			onCustomerDeleteComplete(response.responseText, status);
		}
	});
});

function onCustomerDeleteComplete(response, status)
{
	if (status == "success")
	{
	var resultSet = JSON.parse(response);
	if (resultSet.status.trim() == "success")
	{
		$("#alertSuccess").text("Successfully deleted.");
		$("#alertSuccess").show();
		$("#divCustomersGrid").html(resultSet.data);
	} else if (resultSet.status.trim() == "error")
	{
		$("#alertError").text(resultSet.data);
		$("#alertError").show();
	}
	} else if (status == "error")
	{
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else
	{
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}



//UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event)
{
	$("#hidCustomerIDSave").val($(this).data("customerid"));
	$("#CustomerName").val($(this).closest("tr").find('td:eq(0)').text());
	$("#nic").val($(this).closest("tr").find('td:eq(1)').text());
	$("#phoneNo").val($(this).closest("tr").find('td:eq(2)').text());
	$("#email").val($(this).closest("tr").find('td:eq(3)').text());
	$("#cusAddress").val($(this).closest("tr").find('td:eq(4)').text());
	$("#cusPassword").val($(this).closest("tr").find('td:eq(5)').text());
	
});

//CLIENT-MODEL================================================================
function validateCustomerForm()
{
	// Name--------------------------------------
	if ($("#CustomerName").val().trim() == "")
	{
		return "Insert Customer Name.";
	}
	
	// NIC---------------------------------
	if ($("#nic").val().trim() == "")
	{
		return "Insert Nic.";
	}
	
	// PHONENO------------------------------
	if ($("#phoneNo").val().trim() == "")
	{
		return "Insert Customer Phone no.";
	}
	
	// is numerical value--------------------
	var phoneno = $("#phoneNo").val().trim();
	if (!$.isNumeric(phoneno))
	{
		return "Insert a numerical value for Customer Phone Number.";
	}
	
	// Email------------------------
	if ($("#email").val().trim() == "")
	{
		return "Insert Customer Email.";
	}
	
	// Address------------------------
	if ($("#cusAddress").val().trim() == "")
	{
		return "Insert Customer Address.";
	}
	
	// Password------------------------
	if ($("#cusPassword").val().trim() == "")
	{
		return "Insert Customer Password.";
	}
	
	return true;
}