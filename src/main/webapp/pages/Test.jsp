<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
		<%-- <link href="<%=request.getContextPath()%>/pages/TemplateConf/css/bootstrap.min.css" rel="stylesheet"> --%>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/pages/TemplateConf/css/goldenforms-pro.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/pages/TemplateConf/css/font-awesome.min.css">
        
        <script src="<%=request.getContextPath()%>/pages/TemplateConf/js/jquery-1.9.1.min.js"></script>

</head>
<body class="frm-bg2">
	<div class="goldenforms-pro">
            <div class="goldenforms-wrapper">
                <div class="goldenforms-container gpro-container4">
                    <form action="" method="post" id="gform-pro">
                        <div class="frm-header">
                        	<h4>Basic Form UI</h4>
                        </div><!-- end .frm-header section -->
                        <div class="frm-body">
                        
                            <div class="spacer-b30">
                                <div class="tagline"><span>Basic Form UI Elements </span></div><!-- .tagline -->
                            </div>                        
                        
                            <div class="frm-row">
                                <div class="frm-section colm colm6">
                                    <label class="field">
                                        <input type="text" class="uit-input" placeholder="Text input">
                                    </label>
                                </div><!-- end section -->
                                
                                <div class="frm-section colm colm6">
                                    <label class="field">
                                        <input type="email" class="uit-input" placeholder="Email input">
                                    </label>
                                </div><!-- end section -->
                            </div> <!-- end .frm-row section -->
                            
                            <div class="frm-row">
                                <div class="frm-section colm colm6">
                                    <label class="field">
                                        <input type="url" class="uit-input" placeholder="URL input">
                                    </label>
                                </div><!-- end section -->
                                
                                <div class="frm-section colm colm6">
                                    <label class="field">
                                        <input type="tel" class="uit-input" placeholder="Telephone input">
                                    </label>
                                </div><!-- end section -->
                            </div> <!-- end .frm-row section --> 
                            
                            <div class="frm-row">
                                <div class="frm-section colm colm6">
                                    <label class="field">
                                        <input type="search" class="uit-input" placeholder="Search input">
                                    </label>
                                </div><!-- end section -->
                                
                                <div class="frm-section colm colm6">
                                    <label class="field">
                                        <input type="password" class="uit-input" placeholder="Password input">
                                    </label>
                                </div><!-- end section -->
                            </div> <!-- end .frm-row section -->
                            
                            <div class="frm-row">
                                <div class="frm-section colm colm6">           
                                    <label class="field prepend-icon">
                                        <input type="text" class="uit-input" placeholder="Input with icon left">
                                        <span class="field-icon"><i class="fa fa-globe"></i></span> 
                                    </label>
                                </div><!-- end section -->
                                <div class="frm-section colm colm6">
                                    <label class="field append-icon">
                                        <input type="text" class="uit-input" placeholder="Input with icon right">
                                        <span class="field-icon"><i class="fa fa-lock"></i></span>
                                    </label>                                
                                </div><!-- end section -->                                                                                   
                        	</div> <!-- end .frm-row section --> 
                            
                            <div class="frm-row">
                                <div class="frm-section colm colm6">           
                                    <label class="field prepend-icon">
                                        <input type="text" class="uit-input" placeholder="Input with tooltip left">
                                        <b class="uit-tooltip tip-left-top"><em> Top left tooltip. You notice me now buddy?</em></b>
                                        <span class="field-icon"><i class="fa fa-comments"></i></span>
                                    </label>
                                </div><!-- end section -->
                                <div class="frm-section colm colm6">
                                    <label class="field append-icon">
                                        <input type="text" class="uit-input" placeholder="Input with tooltip right">
                                        <b class="uit-tooltip tip-right-top"><em> Top right tooltip. You notice me now buddy?</em></b>
                                        <span class="field-icon"><i class="fa fa-comments"></i></span>
                                    </label>                                
                                </div><!-- end section -->                                                                                   
                        	</div> <!-- end .frm-row section -->
                            
                            <div class="frm-row">
                                <div class="frm-section colm colm6">           
                                    <label class="field uit-select">
                                        <select name="select2">
                                            <option value="">Select with tooltip</option>
                                            <option value="1"> Select option 1 </option>
                                            <option value="2"> Select option 2 </option>
                                            <option value="3"> Select option 3 </option>
                                            <option value="4"> Select option 4 </option>
                                            <option value="5"> Select option 5 </option>
                                        </select>
                                        <i class="select-arrow"></i>
                                        <b class="uit-tooltip tip-right-top"><em> Tooltips on form selects are cool! </em></b>                        
                                    </label>
                                </div><!-- end section -->
                                <div class="frm-section colm colm6">        
                                    <label class="field uit-select prepend-icon">
                                        <select name="select2">
                                            <option value="">Select with an icon</option>
                                            <option value="1"> Select option 1 </option>
                                            <option value="2"> Select option 2 </option>
                                            <option value="3"> Select option 3 </option>
                                            <option value="4"> Select option 4 </option>
                                            <option value="5"> Select option 5 </option>
                                        </select>
                                        <i class="select-arrow"></i>
                                        <span class="field-icon"><i class="fa fa-globe"></i></span>                      
                                    </label>
                                </div><!-- end section -->                                                                                   
                        	</div> <!-- end .frm-row section -->                                                                       
                            
                            <div class="frm-row">
                                <div class="frm-section colm colm6">
                                    <label for="address" class="field-label">Input with label</label>            
                                    <label class="field">
                                        <input type="text" id="address" class="uit-input" placeholder="Input with label above">
                                    </label>
                                </div><!-- end section -->
                                <div class="frm-section colm colm6">
                                    <label for="attention" class="field-label">Select with label</label>            
                                    <label class="field uit-select">
                                        <select id="attention" name="attention">
                                            <option value="">Select a department</option>
                                            <option value="Technical"> Technical Department </option>
                                            <option value="Marketing"> Marketing Department </option>
                                            <option value="Administration"> Administration Department </option>
                                            <option value="Research"> Research Department </option>
                                            <option value="General"> General </option>
                                        </select>
                                        <i class="select-arrow"></i>                        
                                    </label>
                                </div><!-- end section -->                                                                                   
                        	</div> <!-- end .frm-row section -->
                            
                            <div class="frm-section">            
                                <label class="field">
                                    <textarea class="uit-textarea"></textarea>
                                    <span class="text-hint"> 
                                        <strong>Hint:</strong> Don't be negative - Just be awesome!
                                    </span>                        
                                </label>
                            </div><!-- end section -->                            
                            
                            <div class="spacer-t40 spacer-b40">
                                <div class="tagline"><span>Input Button Widgets </span></div><!-- .tagline -->
                            </div>                             
                            
                            <div class="frm-section">
                                <div class="smart-widget widget-green sm-right smr-50">
                                    <label class="field">
                                        <input type="text" class="uit-input" placeholder="Widget with button right 50">
                                    </label>
                                    <button class="uit-button"> <i class="fa fa-search"></i> </button>
                                </div><!-- end .smart-widget section --> 
                            </div><!-- end section -->
                            
                            <div class="frm-section">
                                <div class="smart-widget widget-blue sm-right smr-80">
                                    <label class="field prepend-icon">
                                        <input type="text" class="uit-input" placeholder="Widget with button right 80">
                                        <span class="field-icon"><i class="fa fa-search"></i></span>
                                    </label>
                                    <button class="uit-button"> Search </button>
                                </div><!-- end .smart-widget section --> 
                            </div><!-- end section -->
                            
                            <div class="frm-section">
                                <div class="smart-widget sm-right smr-120">
                                    <label class="field">
                                        <input type="text" class="uit-input" placeholder="Widget with button right 120">
                                    </label>
                                    <button class="uit-button"> Sleek Button </button>
                                </div><!-- end .smart-widget section --> 
                            </div><!-- end section -->                            
                            
                            <div class="frm-section">
                                <div class="smart-widget widget-red sm-left sml-80">
                                    <label class="field">
                                        <input type="text" class="uit-input" placeholder="Widget with button left 80">
                                    </label>
                                    <button class="uit-button"> Search </button>
                                </div><!-- end .smart-widget section --> 
                            </div><!-- end section -->
                            
                            <div class="frm-section">
                                <div class="smart-widget widget-black sm-left sml-50">
                                    <label class="field">
                                        <input type="text" class="uit-input" placeholder="Widget with button left 50">
                                    </label>
                                    <button class="uit-button"> <i class="fa fa-search"></i> </button>
                                </div><!-- end .smart-widget section --> 
                            </div><!-- end section -->
                            
                            <div class="spacer-t40 spacer-b40">
                                <div class="tagline"><span>File Uploaders </span></div><!-- .tagline -->
                            </div>                            
                            
                            <div class="frm-section">
                                <label class="field uit-file">
                                    <input type="file" class="file-field" id="file" onChange="document.getElementById('file1').value = this.value;">
                                    <input type="text" class="uit-input" id="file1" placeholder="no file selected"  readonly>
                                    <button class="uit-button"> Choose File  </button>
                                </label>                 
                            </div><!-- end section -->
                            
                            <div class="frm-section">
                                <label class="field uit-file blue-file">
                                    <input type="file" class="file-field" id="file2" onChange="document.getElementById('field2').value = this.value;">
                                    <input type="text" class="uit-input" id="field2" placeholder="no file selected"  readonly>
                                    <button class="uit-button"> Choose File  </button>
                                </label>                 
                            </div><!-- end section -->
                            
                            <div class="frm-section">
                                <label class="field uit-file green-file">
                                    <input type="file" class="file-field" id="file3" onChange="document.getElementById('field3').value = this.value;">
                                    <input type="text" class="uit-input" id="field3" placeholder="no file selected"  readonly>
                                    <button class="uit-button"> Choose File  </button>
                                </label>                 
                            </div><!-- end section -->
                            
                            <div class="frm-section">
                                <label class="field uit-file red-file">
                                    <input type="file" class="file-field" id="file4" onChange="document.getElementById('field4').value = this.value;">
                                    <input type="text" class="uit-input" id="field4" placeholder="no file selected"  readonly>
                                    <button class="uit-button"> Choose File  </button>
                                </label>                 
                            </div><!-- end section -->
                            
                            <div class="frm-section">
                                <label class="field uit-file black-file">
                                    <input type="file" class="file-field" id="file5" onChange="document.getElementById('field5').value = this.value;">
                                    <input type="text" class="uit-input" id="field5" placeholder="no file selected"  readonly>
                                    <button class="uit-button"> Choose File  </button>
                                </label>                 
                            </div><!-- end section -->
                            
                            <div class="spacer-t40 spacer-b30">
                                <div class="tagline"><span> Radio + Checkboxes Block </span></div><!-- .tagline -->
                            </div>                             
                            
                            <div class="frm-row">
                                <div class="frm-section colm colm4">
                                    <div class="option-group field">
                                    
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]">
                                            <span class="checkbox-option"></span> Visa
                                        </label>
                                        
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]">
                                            <span class="checkbox-option"></span> Mastercard
                                        </label> 
                                        
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]">
                                            <span class="checkbox-option"></span> Google Wallet 
                                        </label>
                                        
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]">
                                            <span class="checkbox-option"></span> Apple Pay
                                        </label>                                    
                                        
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]">
                                            <span class="checkbox-option"></span> Paypal
                                        </label>
                                    
                                    </div><!-- end .option-group section -->
                                </div><!-- end section -->
                                <div class="frm-section colm colm4">
                                    <div class="option-group field">
                                    
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]" checked>
                                            <span class="checkbox-option"></span> American Express
                                        </label>
                                        
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]" checked>
                                            <span class="checkbox-option"></span> Chase Sapphire
                                        </label>
                                        
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]" checked>
                                            <span class="checkbox-option"></span> Discover More
                                        </label>                                         
                                        
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]" checked>
                                            <span class="checkbox-option"></span> True Earnings
                                        </label>
                                        
                                        <label class="uit-option gblock">
                                            <input type="checkbox" name="checkbox[]" checked>
                                            <span class="checkbox-option"></span> Payoneer
                                        </label>
                                    
                                    </div><!-- end .option-group section -->
                                </div><!-- end section -->                                
                                <div class="frm-section colm colm4">
                                    <div class="option-group field">
                                
                                        <label class="uit-option gblock">
                                            <input type="radio" name="radio" checked>
                                            <span class="radio-option"></span> Sony Xperia Z4
                                        </label>
                        
                                        <label class="uit-option gblock">
                                            <input type="radio" name="radio">
                                            <span class="radio-option"></span> Galaxy Note 5
                                        </label>
                        
                                        <label class="uit-option gblock">
                                            <input type="radio" name="radio">
                                            <span class="radio-option"></span> Apple Iphone 7
                                        </label>
                                        
                                        <label class="uit-option gblock">
                                            <input type="radio" name="radio">
                                            <span class="radio-option"></span> HTC M9
                                        </label>                                    
                        
                                        <label class="uit-option gblock">
                                            <input type="radio" name="radio">
                                            <span class="radio-option"></span> LG G4
                                        </label>
                                    
                                    </div><!-- end .option-group section -->
                                </div><!-- end section -->                                                                                   
                        	</div> <!-- end .frm-row section -->
                            
                            <div class="spacer-t20 spacer-b30">
                                <div class="tagline"><span> Radio + Checkboxes Inline </span></div><!-- .tagline -->
                            </div><!-- end section --> 
                            
                            <div class="frm-section">
                                <div class="option-group field">
                            
                                    <label class="uit-option">
                                        <input type="radio" name="payments" checked>
                                        <span class="radio-option"></span> Credit Card 
                                    </label>
                    
                                    <label class="uit-option">
                                        <input type="radio" name="payments">
                                        <span class="radio-option"></span> Paypal 
                                    </label>
                    
                                    <label class="uit-option">
                                        <input type="radio" name="payments">
                                        <span class="radio-option"></span> Payoneer 
                                    </label>
                                    
                                    <label class="uit-option">
                                        <input type="radio" name="payments">
                                        <span class="radio-option"></span> Gumroad
                                    </label>                                    
                    
                                    <label class="uit-option">
                                        <input type="radio" name="payments">
                                        <span class="radio-option"></span> Skrill 
                                    </label>
                                
                                </div><!-- end .option-group section -->
                            </div><!-- end section --> 
                            
                            <div class="frm-section">
                                <div class="option-group field">
                            
                                    <label class="uit-option">
                                        <input type="checkbox" name="paycheck[]" checked>
                                        <span class="checkbox-option"></span> Credit Card 
                                    </label>
                                    
                                    <label class="uit-option">
                                        <input type="checkbox" name="paycheck[]">
                                        <span class="checkbox-option"></span> Paypal 
                                    </label>
                                    
                                    <label class="uit-option">
                                        <input type="checkbox" name="paycheck[]">
                                        <span class="checkbox-option"></span> Payoneer 
                                    </label>                                         
                                    
                                    <label class="uit-option">
                                        <input type="checkbox" name="paycheck[]">
                                        <span class="checkbox-option"></span> Gumroad
                                    </label>
                                    
                                    <label class="uit-option">
                                        <input type="checkbox" name="paycheck[]">
                                        <span class="checkbox-option"></span> Skrill 
                                    </label>
                                
                                </div><!-- end .option-group section -->
                            </div><!-- end section -->
                            
                            <div class="spacer-t40 spacer-b40">
                                <div class="tagline"><span> Toggle Switches Block </span></div><!-- .tagline -->
                            </div><!-- end .spacer section -->                                               
                            
                            <div class="frm-row">
                                <div class="frm-section colm colm4">
                                    <div class="option-group field">
                                    
                                        <div class="switch-group gblock">
                                            <div class="uit-switch switch-square">
                                              <input type="checkbox" id="s1" checked>
                                              <label for="s1" data-on="YES" data-off="NO"><span class="switch-handle"></span></label>
                                            </div>
                                            <label class="switch-label" for="s1">Explorer</label>
                                        </div>                                
                                    
                                        <div class="switch-group gblock">
                                            <div class="uit-switch switch-square">
                                              <input type="checkbox" id="s2">
                                              <label for="s2" data-on="YES" data-off="NO"><span class="switch-handle"></span></label>
                                            </div>
                                            <label class="switch-label" for="s2">Safari</label>
                                        </div>
                                
                                        <div class="switch-group gblock">
                                            <div class="uit-switch switch-square switch-green">
                                              <input type="checkbox" id="s3" checked>
                                              <label for="s3" data-on="YES" data-off="NO"><span class="switch-handle"></span></label>
                                            </div>
                                            <label class="switch-label" for="s3">Chrome</label>
                                        </div>
                                        
                                        <div class="switch-group gblock gblock">
                                            <div class="uit-switch switch-square switch-green">
                                              <input type="checkbox" id="s4">
                                              <label for="s4" data-on="YES" data-off="NO"><span class="switch-handle"></span></label>
                                            </div>
                                            <label class="switch-label" for="s4"> Firefox </label>
                                        </div>
                                    
                                    </div><!-- end .option-group section -->
                                </div><!-- end section -->
                                <div class="frm-section colm colm4">
                                    <div class="option-group field">
                                    
                                        <div class="switch-group gblock">
                                            <div class="uit-switch switch-square switch-red">
                                              <input type="checkbox" id="s5" checked>
                                              <label for="s5" data-on="YES" data-off="NO"><span class="switch-handle"></span></label>
                                            </div>
                                            <label class="switch-label" for="s5">MooTools</label>
                                        </div>                                
                                    
                                        <div class="switch-group gblock">
                                            <div class="uit-switch switch-square switch-red">
                                              <input type="checkbox" id="s6">
                                              <label for="s6" data-on="YES" data-off="NO"><span class="switch-handle"></span></label>
                                            </div>
                                            <label class="switch-label" for="s6">Angular JS</label>
                                        </div>
                                
                                        <div class="switch-group gblock">
                                            <div class="uit-switch switch-square switch-black">
                                              <input type="checkbox" id="s7" checked>
                                              <label for="s7" data-on="YES" data-off="NO"><span class="switch-handle"></span></label>
                                            </div>
                                            <label class="switch-label" for="s7">jQuery</label>
                                        </div>
                                        
                                        <div class="switch-group gblock gblock">
                                            <div class="uit-switch switch-square switch-black">
                                              <input type="checkbox" id="s8">
                                              <label for="s8" data-on="YES" data-off="NO"><span class="switch-handle"></span></label>
                                            </div>
                                            <label class="switch-label" for="s8">Dojo</label>
                                        </div>
                                    
                                    </div><!-- end .option-group section -->
                                </div><!-- end section -->                                
                                <div class="frm-section colm colm4">
                                    <div class="option-group field">
                                    
                                        <div class="switch-group gblock">
                                            <div class="uit-switch">
                                                <input type="radio" name="radios" id="sr1" checked>
                                                <label for="sr1" data-on="On" data-off="Off"><span class="switch-handle"></span></label>
                                            </div>
                                            <label for="sr1" class="switch-label"> Javascript  </label>
                                        </div>
                                        
                                        <div class="switch-group gblock">
                                            <div class="uit-switch">
                                                <input type="radio" name="radios" id="sr2">
                                                <label for="sr2" data-on="On" data-off="Off"><span class="switch-handle"></span></label>
                                            </div>
                                            <label for="sr2" class="switch-label"> Downloads </label>
                                        </div>
                                        
                                        <div class="switch-group gblock">
                                            <div class="uit-switch">
                                                <input type="radio" name="radios" id="sr3">
                                                <label for="sr3" data-on="On" data-off="Off"><span class="switch-handle"></span></label>
                                            </div>
                                            <label for="sr3" class="switch-label"> Cookies  </label>
                                        </div>
                                        
                                        <div class="switch-group gblock">
                                            <div class="uit-switch">
                                                <input type="radio" name="radios" id="sr4">
                                                <label for="sr4" data-on="On" data-off="Off"><span class="switch-handle"></span></label>
                                            </div> 
                                            <label for="sr4" class="switch-label"> Popups  </label>
                                        </div>                                   
                                                                       
                                    </div><!-- end .option-group section -->
                                </div><!-- end section -->                                                                                   
                        	</div> <!-- end .frm-row section -->
                            
                            <div class="spacer-t20 spacer-b40">
                                <div class="tagline"><span> Review &amp; Rating Widget </span></div><!-- .tagline -->
                            </div><!-- end .spacer section -->                            
                            
                            <div class="frm-row">
                                <div class="frm-section colm colm6">
                                
                                    <div class="uit-rating-wrapper">
                                        <span> Services </span>
                                        <div class="uit-rating">
                                            <input type="radio" id="star-a1" name="services" value="5" checked>
                                            <label class="sta-full" for="star-a1"><span>5 Stars</span></label>
                                            <input type="radio" id="star-a2" name="services" value="4.5">
                                            <label class="sta-half" for="star-a2"><span>4.5 Stars</span></label>
                                            <input type="radio" id="star-a3" name="services" value="4">
                                            <label class="sta-full" for="star-a3"><span>4 Stars</span></label>
                                            <input type="radio" id="star-a4" name="services" value="3.5">
                                            <label class="sta-half" for="star-a4"><span>3.5 Stars</span></label>
                                            <input type="radio" id="star-a5" name="services" value="3">
                                            <label class="sta-full" for="star-a5"><span>3 Stars</span></label>
                                            <input type="radio" id="star-a6" name="services" value="2.5">
                                            <label class="sta-half" for="star-a6"><span>2.5 Stars</span></label>
                                            <input type="radio" id="star-a7" name="services" value="2">
                                            <label class="sta-full" for="star-a7"><span>2 Stars</span></label>
                                            <input type="radio" id="star-a8" name="services" value="1.5">
                                            <label class="sta-half" for="star-a8"><span>1.5 Stars</span></label>
                                            <input type="radio" id="star-a9" name="services" value="1">
                                            <label class="sta-full" for="star-a9"><span>1 Star</span></label>
                                            <input type="radio" id="star-a0" name="services" value="0.5">
                                            <label class="sta-half" for="star-a0"><span>0.5 Stars</span></label>
                                        </div>
                                  </div>
                                    
                                    <div class="uit-rating-wrapper">
                                        <span> Products </span>
                                        <div class="uit-rating">
                                            <input type="radio" id="star-b1" name="products" value="5">
                                            <label class="sta-full" for="star-b1"><span>5 Stars</span></label>
                                            <input type="radio" id="star-b2" name="products" value="4.5">
                                            <label class="sta-half" for="star-b2"><span>4.5 Stars</span></label>
                                            <input type="radio" id="star-b3" name="products" value="4">
                                            <label class="sta-full" for="star-b3"><span>4 Stars</span></label>
                                            <input type="radio" id="star-b4" name="products" value="3.5" checked>
                                            <label class="sta-half" for="star-b4"><span>3.5 Stars</span></label>
                                            <input type="radio" id="star-b5" name="products" value="3">
                                            <label class="sta-full" for="star-b5"><span>3 Stars</span></label>
                                            <input type="radio" id="star-b6" name="products" value="2.5">
                                            <label class="sta-half" for="star-b6"><span>2.5 Stars</span></label>
                                            <input type="radio" id="star-b7" name="products" value="2">
                                            <label class="sta-full" for="star-b7"><span>2 Stars</span></label>
                                            <input type="radio" id="star-b8" name="products" value="1.5">
                                            <label class="sta-half" for="star-b8"><span>1.5 Stars</span></label>
                                            <input type="radio" id="star-b9" name="products" value="1">
                                            <label class="sta-full" for="star-b9"><span>1 Star</span></label>
                                            <input type="radio" id="star-b0" name="products" value="0.5">
                                            <label class="sta-half" for="star-b0"><span>0.5 Stars</span></label>
                                        </div>
                                  </div>
                                  
                                  <div class="uit-rating-wrapper">
                                        <span> Response </span>
                                        <div class="uit-rating">
                                            <input type="radio" id="star-c1" name="response" value="5">
                                            <label class="sta-full" for="star-c1"><span>5 Stars</span></label>
                                            <input type="radio" id="star-c2" name="response" value="4.5">
                                            <label class="sta-half" for="star-c2"><span>4.5 Stars</span></label>
                                            <input type="radio" id="star-c3" name="response" value="4">
                                            <label class="sta-full" for="star-c3"><span>4 Stars</span></label>
                                            <input type="radio" id="star-c4" name="response" value="3.5">
                                            <label class="sta-half" for="star-c4"><span>3.5 Stars</span></label>
                                            <input type="radio" id="star-c5" name="response" value="3">
                                            <label class="sta-full" for="star-c5"><span>3 Stars</span></label>
                                            <input type="radio" id="star-c6" name="response" value="2.5">
                                            <label class="sta-half" for="star-c6"><span>2.5 Stars</span></label>
                                            <input type="radio" id="star-c7" name="response" value="2">
                                            <label class="sta-full" for="star-c7"><span>2 Stars</span></label>
                                            <input type="radio" id="star-c8" name="response" value="1.5" checked>
                                            <label class="sta-half" for="star-c8"><span>1.5 Stars</span></label>
                                            <input type="radio" id="star-c9" name="response" value="1">
                                            <label class="sta-full" for="star-c9"><span>1 Star</span></label>
                                            <input type="radio" id="star-c0" name="response" value="0.5">
                                            <label class="sta-half" for="star-c0"><span>0.5 Stars</span></label>
                                        </div>
                                  </div>
                                </div><!-- end section -->
                                
                                <div class="frm-section colm colm6">
                                    <div class="uit-rating-wrapper">
                                        <span> Customization </span>
                                        <div class="uit-rating">
                                            <input type="radio" id="star-d1" name="customization" value="5">
                                            <label class="sta-full" for="star-d1"><span>5 Stars</span></label>
                                            <input type="radio" id="star-d2" name="customization" value="4.5">
                                            <label class="sta-half" for="star-d2"><span>4.5 Stars</span></label>
                                            <input type="radio" id="star-d3" name="customization" value="4">
                                            <label class="sta-full" for="star-d3"><span>4 Stars</span></label>
                                            <input type="radio" id="star-d4" name="customization" value="3.5">
                                            <label class="sta-half" for="star-d4"><span>3.5 Stars</span></label>
                                            <input type="radio" id="star-d5" name="customization" value="3">
                                            <label class="sta-full" for="star-d5"><span>3 Stars</span></label>
                                            <input type="radio" id="star-d6" name="customization" value="2.5" checked>
                                            <label class="sta-half" for="star-d6"><span>2.5 Stars</span></label>
                                            <input type="radio" id="star-d7" name="customization" value="2">
                                            <label class="sta-full" for="star-d7"><span>2 Stars</span></label>
                                            <input type="radio" id="star-d8" name="customization" value="1.5">
                                            <label class="sta-half" for="star-d8"><span>1.5 Stars</span></label>
                                            <input type="radio" id="star-d9" name="customization" value="1">
                                            <label class="sta-full" for="star-d9"><span>1 Star</span></label>
                                            <input type="radio" id="star-d0" name="customization" value="0.5">
                                            <label class="sta-half" for="star-d0"><span>0.5 Stars</span></label>
                                        </div>
                                  </div>
                                    
                                    <div class="uit-rating-wrapper">
                                        <span> Documentation </span>
                                        <div class="uit-rating">
                                            <input type="radio" id="star-e1" name="documentation" value="5">
                                            <label class="sta-full" for="star-e1"><span>5 Stars</span></label>
                                            <input type="radio" id="star-e2" name="documentation" value="4.5">
                                            <label class="sta-half" for="star-e2"><span>4.5 Stars</span></label>
                                            <input type="radio" id="star-e3" name="documentation" value="4" checked>
                                            <label class="sta-full" for="star-e3"><span>4 Stars</span></label>
                                            <input type="radio" id="star-e4" name="documentation" value="3.5">
                                            <label class="sta-half" for="star-e4"><span>3.5 Stars</span></label>
                                            <input type="radio" id="star-e5" name="documentation" value="3">
                                            <label class="sta-full" for="star-e5"><span>3 Stars</span></label>
                                            <input type="radio" id="star-e6" name="documentation" value="2.5">
                                            <label class="sta-half" for="star-e6"><span>2.5 Stars</span></label>
                                            <input type="radio" id="star-e7" name="documentation" value="2">
                                            <label class="sta-full" for="star-e7"><span>2 Stars</span></label>
                                            <input type="radio" id="star-e8" name="documentation" value="1.5">
                                            <label class="sta-half" for="star-e8"><span>1.5 Stars</span></label>
                                            <input type="radio" id="star-e9" name="documentation" value="1">
                                            <label class="sta-full" for="star-e9"><span>1 Star</span></label>
                                            <input type="radio" id="star-e0" name="documentation" value="0.5">
                                            <label class="sta-half" for="star-e0"><span>0.5 Stars</span></label>
                                        </div>
                                  </div>
                                  
                                  <div class="uit-rating-wrapper">
                                        <span> Design quality </span>
                                        <div class="uit-rating">
                                            <input type="radio" id="star-f1" name="designq" value="5">
                                            <label class="sta-full" for="star-f1"><span>5 Stars</span></label>
                                            <input type="radio" id="star-f2" name="designq" value="4.5">
                                            <label class="sta-half" for="star-f2"><span>4.5 Stars</span></label>
                                            <input type="radio" id="star-f3" name="designq" value="4">
                                            <label class="sta-full" for="star-f3"><span>4 Stars</span></label>
                                            <input type="radio" id="star-f4" name="designq" value="3.5">
                                            <label class="sta-half" for="star-f4"><span>3.5 Stars</span></label>
                                            <input type="radio" id="star-f5" name="designq" value="3">
                                            <label class="sta-full" for="star-f5"><span>3 Stars</span></label>
                                            <input type="radio" id="star-f6" name="designq" value="2.5">
                                            <label class="sta-half" for="star-f6"><span>2.5 Stars</span></label>
                                            <input type="radio" id="star-f7" name="designq" value="2">
                                            <label class="sta-full" for="star-f7"><span>2 Stars</span></label>
                                            <input type="radio" id="star-f8" name="designq" value="1.5" checked>
                                            <label class="sta-half" for="star-f8"><span>1.5 Stars</span></label>
                                            <input type="radio" id="star-f9" name="designq" value="1">
                                            <label class="sta-full" for="star-f9"><span>1 Star</span></label>
                                            <input type="radio" id="star-f0" name="designq" value="0.5">
                                            <label class="sta-half" for="star-f0"><span>0.5 Stars</span></label>
                                        </div>
                                  </div>
                                  
                                </div><!-- end section -->
                            </div> <!-- end .frm-row section -->
                            
                            <div class="spacer-t20 spacer-b40">
                                <div class="tagline"><span> Notifications + Progress Bars </span></div><!-- .tagline -->
                            </div><!-- end .spacer section -->                             
                            
                            <div class="frm-section">
                            
                                <div class="uit-progressbar progress-animated">
                                    <div class="bar"></div>
                                    <div class="percent"></div>
                                </div>
                                
                                <div class="uit-progressbar bar-blue progress-animated spacer-t10">
                                    <div class="bar"></div>
                                    <div class="percent"></div>
                                </div>
                                
                                <div class="uit-progressbar bar-green spacer-t10">
                                    <div class="bar"></div>
                                    <div class="percent"></div>
                                </div>
                                
                                <div class="uit-progressbar bar-red spacer-t10">
                                    <div class="bar"></div>
                                    <div class="percent"></div>
                                </div>
                                
                                <div class="uit-progressbar bar-black spacer-t10">
                                    <div class="bar"></div>
                                    <div class="percent"></div>
                                </div>                    
                                
                                <div class="uit-progressbar bar-blue spacer-t10">
                                    <div class="bar"></div>
                                    <div class="percent"></div>
                                </div>                                                              
                            
                                <div class="notification alert-info spacer-t10">
                                    <p>Info Notification </p>
                                    <a href="#" class="close-btn">&times;</a>                                  
                                </div><!-- end .notification section -->
                                
                                <div class="notification alert-success spacer-t10">
                                    <p>Success Notification</p>
                                    <a href="#" class="close-btn">&times;</a>                                  
                                </div><!-- end .notification section -->
                                
                                <div class="notification alert-warning spacer-t10">
                                    <p>Warning Notification</p>
                                    <a href="#" class="close-btn">&times;</a>                                  
                                </div><!-- end .notification section -->
                                
                                <div class="notification alert-error spacer-t10">
                                    <p>Error Notification</p>
                                    <a href="#" class="close-btn">&times;</a>                                  
                                </div><!-- end .notification section -->                                                                         
                                                   
                            </div><!-- end .section section -->                                                                                      
                            
                        </div><!-- end .frm-body  section -->
                        <div class="frm-footer">
                        	<button type="submit" class="uit-button btn-blue"> Submit Button </button>
                            <button type="reset" class="uit-button"> Reset Button </button>
                        </div><!-- end .frm-footer section -->   
                    </form>   		
                </div><!-- end .goldenforms-container section -->  
            </div><!-- end .goldenforms-wrapper section -->  
        </div><!-- end .goldenforms-pro section -->

	
</body>
</html>