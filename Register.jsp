
<%@include file="CommonHeader.jsp" %>
<div class="container">
<img src="<c:url value='./images/register.png'/>">
<div class="row justify-content-center">
                    <div class="col-md-5">
                        <div class="card">
                            <div class="card-header">Register</div>
                            <div class="card-body">
                            

                                <form class="form-horizontal" action="register_user"  method="post">
                                

                                    <div class="form-group">
                                        <label for="name" class="cols-sm-2 control-label">User Name</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="username" id="username" placeholder="userName" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="cols-sm-2 control-label">Password</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                <input type="password" class="form-control" name="password" id="password" placeholder="Password" />
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                           <label for="username" class="cols-sm-2 control-label">CustomerName</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="customerName" id="customerName" placeholder="customerName" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="cols-sm-2 control-label">EmailId</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="emailId" id="emailId" placeholder="emailId" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm" class="cols-sm-2 control-label">Mobile Number</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="mobileNo" id="mobileNo" placeholder="mobileNo" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm" class="cols-sm-2 control-label">Address</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="address" id="address" placeholder="address" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm" class="cols-sm-2 control-label">ROLE</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="role" id="role" placeholder="role"  readonly/>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="form-group ">
                                        <input type="submit" value="Register" class="btn btn-info"/>
                                    </div>
                                    
                                </form>
                            </div>

                        </div>
                    </div>
            </div>
            
</div>
            