<form action="<?php echo $action; ?>" method="post" id="afterpay-form-payment">
    <div class="form-group required col-sm-4">
        <label class="col-sm-6 control-label" for="gender"><?php echo $text_please_select_gender; ?>:</label>
        <div class="col-sm-6">
            <select name="gender" class="form-control">
                <option value="male"><?php echo $text_please_select_gender_male; ?></option>
                <option value="female"><?php echo $text_please_select_gender_female; ?></option>
            </select>
        </div>
    </div>
 
    <div class="form-group required  col-sm-4">
        <label class="col-sm-6 control-label" for="dob"><?php echo $text_please_enter_dob; ?>:</label>
        <div class="col-sm-6">
            <input type="text" name="dob" id="dob" placeholder="dd-mm-yyyy" class="form-control"/>
        </div>
    </div>
 
    <div class="form-group required  col-sm-4"> 
        <div class="col-sm-1">
            <input type="checkbox" name="ap_terms_and_conditions" id="ap_terms_and_conditions" />
        </div>
        <label class="col-sm-10 control-label" for="ap_terms_and_conditions"><?php echo $text_i_accept; ?> <a class="agree" href="<?php echo $terms_conditions_url; ?>" target="_blank"><?php echo $text_terms_and_conditions; ?></a></label>
    </div>

    <div class="form-group pull-right col-sm-12">
        <?php if ($is_ap_allowed) { ?>
        <div class="right col-sm-3 pull-right">
            <input type="submit" id="afterpay-button-payment" value="<?php echo $button_confirm; ?>" class="button btn btn-primary pull-right"/>
        </div>
        <?php } ?>
    </div>
</form> 
<script type="text/javascript"><!--
$(document).delegate('#afterpay-button-payment', 'click', function(e) {
    e.preventDefault();
    var valid = true;
    $('.alert, .alert-danger').remove();
    if ($('#ap_terms_and_conditions').is(':checked')  == false) {
        valid =false;
        $('#collapse-checkout-confirm .panel-body').prepend('<div class="alert alert-danger">' + '<?php echo $text_error_please_accept_tc; ?>' + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
    }
    if (!$('#dob').val().match(/^(0[1-9]|[12][0-9]|3[01])\-(0[1-9]|1[012])\-[0-9]{4}/)) {
        valid =false;
        $('#collapse-checkout-confirm .panel-body').prepend('<div class="alert alert-danger">' + '<?php echo $text_error_invalid_dob; ?>' + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
    } 
    if (valid) {
        $('#afterpay-form-payment').submit();
    
    }
    return;    
});
//--></script>