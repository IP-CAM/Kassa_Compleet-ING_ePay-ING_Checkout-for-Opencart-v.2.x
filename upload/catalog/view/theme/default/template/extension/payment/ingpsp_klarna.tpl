<form action="<?php echo $action; ?>" method="post">
    <div class="form-group required">
        <label class="col-sm-2 control-label" for="gender">Select your gender:</label>
        <div class="col-sm-3">
            <select name="gender" class="form-control">
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>
        </div>
    </div>

    <div class="form-group required">
        <label class="col-sm-2 control-label" for="dob">Enter your date of birth:</label>
        <div class="col-sm-3">
            <input type="text" name="dob" placeholder="yyyy-mm-dd" class="form-control"/>
        </div>
    </div>

    <div class="form-group pull-right">
        <div class="right col-sm-3">
            <input type="submit" value="<?php echo $button_confirm; ?>" class="button btn btn-primary"/>
        </div>
    </div>
</form>