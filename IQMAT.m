function varargout = IQMAT(varargin)
% IQMAT M-file for IQMAT.fig
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IQMAT_OpeningFcn, ...
                   'gui_OutputFcn',  @IQMAT_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before IQMAT is made visible.
function IQMAT_OpeningFcn(hObject, eventdata, handles, varargin)
addpath(genpath('\'));
% This function has no output args, see OutputFcn.
% Choose default command line output for IQMAT
handles.output = hObject;

%set position for Spacial Distortion panel
set(handles.SptDI, 'Position',[169.8 15.385 46.6 21.615]);
p=get(handles.textSptDI, 'Position' );
    set(handles.textSptDI, 'Position' , p+[0 17.5 0 0]);
    p=get(handles.chkMD, 'Position' );
    set(handles.chkMD, 'Position' , p+[0 18.5 0 0]);
    p=get(handles.chkMSE, 'Position' );
    set(handles.chkMSE, 'Position' , p+[0 18.5 0 0]);
    p=get(handles.chkMAE, 'Position' );
    set(handles.chkMAE, 'Position' , p+[0 18.5 0 0]);
    p=get(handles.chkIF, 'Position' );
    set(handles.chkIF, 'Position' , p+[0 18.5 0 0]);
    p=get(handles.pbSptDI, 'Position' );
    set(handles.pbSptDI, 'Position' , p+[0 18.5 0 0]);
    
 %set position for Spectral Distortion panel   
 set(handles.SpcDI, 'Position',[169.8 23.846 65 13.154]);  
 p=get(handles.textSpcDI, 'Position' );
    set(handles.textSpcDI, 'Position' , p+[0 9 0 0]);
    p=get(handles.chkNSMD, 'Position' );
    set(handles.chkNSMD, 'Position' , p+[0 9 0 0]);
    p=get(handles.chkNSPD, 'Position' );
    set(handles.chkNSPD, 'Position' , p+[0 9 0 0]);
    p=get(handles.pbSpcDI, 'Position' );
    set(handles.pbSpcDI, 'Position' , p+[0 10 0 0]);
    
    %set position for Correlational Characteristics panel   
    set(handles.CC, 'Position',[169.8 19.231 60.2 18.769]);
    p=get(handles.textCC, 'Position' );
    set(handles.textCC, 'Position' , p+[0 14 0 0]);
    p=get(handles.chkNCC, 'Position' );
    set(handles.chkNCC, 'Position' , p+[0 14 0 0]);
    p=get(handles.chkCD, 'Position' );
    set(handles.chkCD, 'Position' , p+[0 14 0 0]);
    p=get(handles.chkMAD, 'Position' );
    set(handles.chkMAD, 'Position' , p+[0 14 0 0]);
    p=get(handles.pbCC, 'Position' );
    set(handles.pbCC, 'Position' , p+[0 14 0 0]);
    
    %set position for visual quality metrics panel   
    set(handles.VQM, 'Position',[169.8 14.923 57.4 23.077]);
    p=get(handles.textVQM, 'Position' );
    set(handles.textVQM, 'Position' , p+[0 18.5 0 0]);
    p=get(handles.chkPSNR, 'Position' );
    set(handles.chkPSNR, 'Position' , p+[0 19 0 0]);
    p=get(handles.chkNHS, 'Position' );
    set(handles.chkNHS, 'Position' , p+[0 19 0 0]);
    p=get(handles.chkSSIM, 'Position' );
    set(handles.chkSSIM, 'Position' , p+[0 19 0 0]);
    p=get(handles.chkMSSIM, 'Position' );
    set(handles.chkMSSIM, 'Position' , p+[0 19 0 0]);
    p=get(handles.pbVQM, 'Position' );
    set(handles.pbVQM, 'Position' , p+[0 19 0 0]);
    
    %set position for binary similarity panel
    set(handles.BS, 'Position',[169.8 1 63 43]);
    p=get(handles.textBS, 'Position' );
    set(handles.textBS, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkSSSM1, 'Position' );
    set(handles.chkSSSM1, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkSSSM2, 'Position' );
    set(handles.chkSSSM2, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkSSSM3, 'Position' );
    set(handles.chkSSSM3, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkSSSM4, 'Position' );
    set(handles.chkSSSM4, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkSSSM5, 'Position' );
    set(handles.chkSSSM5, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkKSM1, 'Position' );
    set(handles.chkKSM1, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkOSM, 'Position' );
    set(handles.chkOSM, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkBLWNDM, 'Position' );
    set(handles.chkBLWNDM, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkPD, 'Position' );
    set(handles.chkPD, 'Position' , p+[0 39 0 0]);
    p=get(handles.chkVDM, 'Position' );
    set(handles.chkVDM, 'Position' , p+[0 39 0 0]);
    p=get(handles.pbBS, 'Position' );
    set(handles.pbBS, 'Position' , p+[0 39 0 0]);

    %set position for others panel
    set(handles.Othrs, 'Position',[169.8 11.923 57.4 26.077]);
    p=get(handles.textOthers, 'Position' );
    set(handles.textOthers, 'Position' , p+[0 21 0 0]);
    p=get(handles.chkWSNR, 'Position' );
    set(handles.chkWSNR, 'Position' , p+[0 21 0 0]);
    p=get(handles.chkVSNR, 'Position' );
    set(handles.chkVSNR, 'Position' , p+[0 21 0 0]);
    p=get(handles.chkSNR, 'Position' );
    set(handles.chkSNR, 'Position' , p+[0 21 0 0]);
    p=get(handles.chkUQI, 'Position' );
    set(handles.chkUQI, 'Position' , p+[0 21 0 0]);
    p=get(handles.chkNQM, 'Position' );
    set(handles.chkNQM, 'Position' , p+[0 21 0 0]);
    p=get(handles.pbOthers, 'Position' );
    set(handles.pbOthers, 'Position' , p+[0 21 0 0]);
    
% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = IQMAT_OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
%opens file menu to select different categories


% --------------------------------------------------------------------
function RefImage_Callback(hObject, eventdata, handles)
% has options to select reference image from directories
[imageName user_cancel]=imgetfile();

%give error message if image not selected
if user_cancel
    msgbox(sprintf('Error!! Image not selected'),'Error','Error');
    return
end

%save reference image in handles
handles.RefName=imageName;
Ref=imread(imageName);
handles.Ref=Ref;

%displays reference image
set(handles.textreferenceimage,'Visible','on');
set(handles.referenceimageaxes,'Visible','on');
cla(handles.referenceimageaxes,'reset');
imshow(Ref,'Parent',handles.referenceimageaxes);
guidata(hObject,handles);



% --------------------------------------------------------------------
function TestImage_Callback(hObject, eventdata, handles)
% has options to select test image from directories
[imageName user_cancel]=imgetfile();

%give error message if image not selected
if user_cancel
    msgbox(sprintf('Error!! Image not selected'),'Error','Error');
    return
end

%save test image in handles
handles.TestName=imageName;
Test=imread(imageName);
handles.Test=Test;

%displays reference image
set(handles.texttestimage,'Visible','on');
set(handles.testimageaxes,'Visible','on');
cla(handles.testimageaxes,'reset');
imshow(Test,'Parent', handles.testimageaxes);
guidata(hObject,handles);


% --------------------------------------------------------------------
function SpacialDistortion_Callback(hObject, eventdata, handles)
% opens spacial distorsion metrics menu to select a metric of this category


% --------------------------------------------------------------------
function MD_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find MD value
MD_value = MD(Ref,Test);

%display MD value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Maximum Difference');
MD_value=num2str(MD_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',MD_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function MSE_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find MSE value
MSE_value = MSE(Ref,Test);

%display MSE value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Mean-Squared Error');
MSE_value=num2str(MSE_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',MSE_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function MAE_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find MAE value
MAE_value = MAE(Ref,Test);

%display MSE value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Mean Absolute Error');
MAE_value=num2str(MAE_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',MAE_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function IF_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find IF value
IF_value = IF(Ref,Test);

%display IF value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Image Fidelity');
IF_value=num2str(IF_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',IF_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function SpectralDistortion_Callback(hObject, eventdata, handles)
% opens spectral distorsion metrics menu to select a metric of this category


% --------------------------------------------------------------------
function NSMD_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find NSMD value
NSMD_value = NSMD(Ref,Test);

% display NSMD value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Normalized Spectral Magnitude Distortion');
NSMD_value=num2str(NSMD_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',NSMD_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function NSPD_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find NPMD value
NSPD_value = NSPD(Ref,Test);

% display NPMD value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Normalized Spectral Phase Distortion');
NSPD_value=num2str(NSPD_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',NSPD_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function CorrelationCharacteristics_Callback(hObject, eventdata, handles)
% opens correlation metrics menu to select a metric of this category


% --------------------------------------------------------------------
function NCC_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find NCC value
NCC_value = NCC(Ref,Test);

% display NCC value 
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Normalized Cross-Correlation');
NCC_value=num2str(NCC_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',NCC_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function CD_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find CD value
CD_value = CD(Ref,Test);

% display CD value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Czenakowski Distance');
CD_value=num2str(CD_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',CD_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function MAD_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find MAD value
MAD_value = MAD(Ref,Test);

%display MAD value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Mean Angular Difference');
MAD_value=num2str(MAD_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',MAD_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function VisualQuality_Callback(hObject, eventdata, handles)
% opens visual quality metrics menu to select a metric of this category


% --------------------------------------------------------------------
function PSNR_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find PSNR value
PSNR_value = PSNR(Ref,Test);

%display PSNR value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Peak Signal-to-Noise Ratio');
PSNR_value=num2str(PSNR_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',PSNR_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function NHS_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find NHS value
NHS_value = NHS(Ref,Test);

%display NHS value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Normalized Histogram Similarity');
NHS_value=num2str(NHS_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',NHS_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function SSIM_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find SSIM value
SSIM_value = SSIM(Ref,Test);

% display SSIM value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Structural Similarity');
SSIM_value=num2str(SSIM_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',SSIM_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function MSSIM_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find MSSIM value
MSSIM_value = MSSIM(Ref,Test);

% display MSSIM value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Multi-scale Structural Similarity');
MSSIM_value=num2str(MSSIM_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',MSSIM_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function BinarySimilarity_Callback(hObject, eventdata, handles)
% opens binary similarity metrics menu to select a metric of this category


% --------------------------------------------------------------------
function SSSM1_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find SSSM1 value
SSSM1_value = SSSM1_modified(Test);

% display SSSM1 value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Sokal & Sneath Similarity Measure 1');
SSSM1_value=num2str(SSSM1_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',SSSM1_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function SSSM2_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find SSSM2 value
SSSM2_value = SSSM2_modified(Test);

% display SSSM2 value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Sokal & Sneath Similarity Measure 2');
SSSM2_value=num2str(SSSM2_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',SSSM2_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function SSSM3_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find SSSM3 value
SSSM3_value = SSSM3_modified(Test);

% display SSSM3 value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Sokal & Sneath Similarity Measure 3');
SSSM3_value=num2str(SSSM3_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',SSSM3_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function SSSM4_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find SSSM4 value
SSSM4_value = SSSM4_modified(Test);

% display SSSM4 value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Sokal & Sneath Similarity Measure 4');
SSSM4_value=num2str(SSSM4_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',SSSM4_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function SSSM5_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find SSSM5 value
SSSM5_value = SSSM5_modified(Test);

% display SSSM5 value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Sokal & Sneath Similarity Measure 5');
SSSM5_value=num2str(SSSM5_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',SSSM5_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function KSM1_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find KSM1 value
KSM1_value = KSM1_modified(Test);

% display KSM1 value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Kulczynski Similarity Measure 1 ');
KSM1_value=num2str(KSM1_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',KSM1_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function OSM_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find OSM value
OSM_value = OSM_modified(Test);

% display OSM value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Ochiai Similarity Measure');
OSM_value=num2str(OSM_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',OSM_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function BLWNDM_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find BLWNDM value
BLWNDM_value = BLWNDM_modified(Test);

% display BLWNDM value 
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String', 'Binary Lance & Williams Nonmetric Dissimilarity Measure ');
BLWNDM_value=num2str(BLWNDM_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',BLWNDM_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function PD_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find PD value
PD_value = PD_modified(Test);

% display PD value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Pattern Difference');
PD_value=num2str(PD_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',PD_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function VDM_Callback(hObject, eventdata, handles)
% get test image from handles
% give errors if  test image is not selected
if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

% find VDM value
VDM_value = VDM_modified(Test);

% display VDM value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Variance Dissimilarity Measure ');
VDM_value=num2str(VDM_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',VDM_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function Others_Callback(hObject, eventdata, handles)
%opens other metrics menu to select a metric of this category


% --------------------------------------------------------------------
function VSNR_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find VSNR value
VSNR_value = VSNR(Ref,Test);

%display VSNR value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Visual Signal-to-Noise Ratio');
VSNR_value=num2str(VSNR_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',VSNR_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function WSNR_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find WSNR value
WSNR_value = WSNR(Ref,Test);

%display WSNR value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Weighted Signal-to-Noise Ratio');
WSNR_value=num2str(WSNR_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',WSNR_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
sfunction SNR_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find SNR value
SNR_value = SNR(Ref,Test);

%display SNR value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Signal-to-Noise Ratio');
SNR_value=num2str(SNR_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',SNR_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function UQI_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find UQI value
UQI_value = UQI(Ref,Test);

%display UQI value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Universal Quality Index');
UQI_value=num2str(UQI_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',UQI_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function NQM_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%find NQM value
NQM_value = NQM(Ref,Test);

%display NQM value
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Noise Quality Measure');
NQM_value=num2str(NQM_value);
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',NQM_value);
guidata(hObject,handles);


% --------------------------------------------------------------------
function AllMetrics_Callback(hObject, eventdata, handles)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end

%extract names from images
RefName=handles.RefName;
TestName=handles.TestName;
[pathstr,RefImageName,ext]=fileparts(RefName);
[pathstr,TestImageName,ext]=fileparts(TestName);

%calculate values of all metrics
MD_value = MD(Ref,Test);
MSE_value = MSE(Ref,Test);
MAE_value = MAE(Ref,Test);
IF_value = IF(Ref,Test);
NSMD_value = NSMD(Ref,Test);
NSPD_value = NSPD(Ref,Test);
NCC_value = NCC(Ref,Test);
CD_value = CD(Ref,Test);
MAD_value = MAD(Ref,Test);
PSNR_value = PSNR(Ref,Test);
NHS_value = NHS(Ref,Test);
SSIM_value= SSIM(Ref,Test);
MSSIM_value= MSSIM(Ref,Test);
VSNR_value= VSNR(Ref,Test);
WSNR_value= WSNR(Ref,Test);
SNR_value= SNR(Ref,Test);
UQI_value= UQI(Ref,Test);
NQM_value= NQM(Ref,Test);
SSSM1_value = SSSM1_modified(Test);
SSSM2_value = SSSM2_modified(Test);
SSSM3_value = SSSM3_modified(Test);
SSSM4_value = SSSM4_modified(Test);
SSSM5_value = SSSM5_modified(Test);
KSM1_value = KSM1_modified(Test);
OSM_value = OSM_modified(Test);
BLWNDM_value = BLWNDM_modified(Test);
PD_value = PD_modified(Test);
VDM_value = VDM_modified(Test);

%store name and value in Metric
A={'Reference Image =',RefImageName;
    'Test Image =',TestImageName;
    ' ',' ';
    'Maximum Difference',MD_value;
    'Mean-Squared Error',MSE_value;
    'Mean Absolute Error',MAE_value;
    'Image Fidelity',IF_value;
    'Normalized Spectral Magnitude Distortion',NSMD_value;
    'Normalized Spectral Phase Distortion',NSPD_value;
    'Normalized Cross-Correlation',NCC_value;
    'Czenakowski Distance',CD_value;
    'Mean Angular Difference', MAD_value;
    'Peak Signal-to-Noise Ratio', PSNR_value;
    'Normalized Histogram Similarity', NHS_value;
    'Structural Similarity', SSIM_value;
    'Multi-scale Structural Similarity', MSSIM_value;
    'Visual Signal-to-Noise Ratio', VSNR_value;
    'Weighted Signal-to-Noise Ratio', WSNR_value;
    'Signal-to-Noise Ratio', SNR_value;
    'Universal Quaity Index', UQI_value;
    'Noise Quality Measure', NQM_value;
    'Sokal & Sneath Similarity Measure 1', SSSM1_value;
    'Sokal & Sneath Similarity Measure 2', SSSM2_value;
    'Sokal & Sneath Similarity Measure 3', SSSM3_value;
    'Sokal & Sneath Similarity Measure 4', SSSM4_value;
    'Sokal & Sneath Similarity Measure 5', SSSM5_value;
    'Kulczynski Similarity Measure 1', KSM1_value;
    'Ochiai Similarity Measure', OSM_value;
    'Binary Lance & Williams Nonmetric Dissimilarity Measure', BLWNDM_value;
    'Pattern Difference', PD_value;
    'Variance Dissimilarity Measure', VDM_value};

%input the name of excel file where user wants to save information
cell=inputdlg('Enter the name of the Excel file to store values:','Excel File Name',1);
name=strcat(cell{1},'.xlsx');
xlswrite(name,A);

%notify user that values have been stored in excel file
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Values Present in file:');
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',name);
guidata(hObject,handles);


% --------------------------------------------------------------------
function Bulk_Callback(hObject, eventdata, handles)
% select bulk images option


% --------------------------------------------------------------------
function BulkAllMetrics_Callback(hObject, eventdata, handles)
%select directory of reference images
Path1=uigetdir('\','Select folder containing Reference Images');

%give error message if directory not selected
if ~Path1
    msgbox(sprintf('Error!! Reference Image folder not selected'),'Error','Error');
    return
end

%select directory of test images
Path2=uigetdir('\','Select folder containing Test Images');

%give error message if directory not selected
if ~Path2
    msgbox(sprintf('Error!! Test Image folder not selected'),'Error','Error');
    return
end

Path1Files=numel(dir(Path1));
Path2Files=numel(dir(Path2));

%check if there are equal reference and test images in directories
if(Path1Files==Path2Files)
    n=Path1Files-2;
else
    msgbox(sprintf('Error!! Number of Reference Image files and Test Image files are not equal!!'),'Error','Error');
    return
end

A=zeros(2,19);
%store initial names of all metrics in matrix 
A={'Reference Image ','Test Image =','Maximum Difference','Mean-Squared Error','Mean Absolute Error','Image Fidelity','Normalized Spectral Magnitude Distortion','Normalized Spectral Phase Distortion','Normalized Cross-Correlation','Czenakowski Distance','Mean Angular Difference', 'Peak Signal-to-Noise Ratio', 'Normalized Histogram Similarity','Structural Similarity','Multi-scale Structural Similarity','Visual Signal-to-Noise Ratio', 'Weighted Signal-to-Noise Ratio','Signal-to-Noise Ratio','Universal Quality Index','Noise Quality Measure','Sokal & Sneath Similarity Measure 1', 'Sokal & Sneath Similarity Measure 2','Sokal & Sneath Similarity Measure 3','Sokal & Sneath Similarity Measure 4', 'Sokal & Sneath Similarity Measure 5', 'Kulczynski Similarity Measure 1', 'Ochiai Similarity Measure', 'Binary Lance & Williams Nonmetric Dissimilarity Measure', 'Pattern Difference', 'Variance Dissimilarity Measure'};

%iterate for all images
for i=1:n
    if(i<10)
        j=num2str(i);
        num=strcat('0','0',j);
    elseif (i<100) 
        j=num2str(i);
        num=strcat('0',j);
    else
        j=num2str(i);
        num=j;
    end
    
    
    RefPath=strcat(Path1,'\*',num,'.*');
    TestPath=strcat(Path2,'\*',num,'.*');
    
    fileRef = dir(RefPath);
    RefImagePath=strcat(Path1,'\',fileRef.name);
    Ref=imread(RefImagePath);

    
    fileTest= dir(TestPath);
    TestImagePath=strcat(Path2,'\',fileTest.name);
    Test=imread(TestImagePath);
    
    %calcuate all metrics for particular set of images
    MD_value = MD(Ref,Test);
    MSE_value = MSE(Ref,Test);
    MAE_value = MAE(Ref,Test);
    IF_value = IF(Ref,Test);
    NSMD_value = NSMD(Ref,Test);
    NSPD_value = NSPD(Ref,Test);
    NCC_value = NCC(Ref,Test);
    CD_value = CD(Ref,Test);
    MAD_value = MAD(Ref,Test);
    PSNR_value = PSNR(Ref,Test);
    NHS_value = NHS(Ref,Test);
    SSIM_value= SSIM(Ref,Test);
    MSSIM_value= MSSIM(Ref,Test);
    VSNR_value= VSNR(Ref,Test);
    WSNR_value= WSNR(Ref,Test);
    SNR_value= SNR(Ref,Test);
    UQI_value= UQI(Ref,Test);
    NQM_value= NQM(Ref,Test);
    SSSM1_value = SSSM1_modified(Test);
    SSSM2_value = SSSM2_modified(Test);
    SSSM3_value = SSSM3_modified(Test);
    SSSM4_value = SSSM4_modified(Test);
    SSSM5_value = SSSM5_modified(Test);
    KSM1_value = KSM1_modified(Test);
    OSM_value = OSM_modified(Test);
    BLWNDM_value = BLWNDM_modified(Test);
    PD_value = PD_modified(Test);
    VDM_value = VDM_modified(Test);
    
    %store in in matrix
    B={fileRef.name,fileTest.name,MD_value,MSE_value,MAE_value,IF_value,NSMD_value,NSPD_value,NCC_value,CD_value, MAD_value, PSNR_value, NHS_value, SSIM_value, MSSIM_value, VSNR_value, WSNR_value, SNR_value, UQI_value, NQM_value,SSSM1_value, SSSM2_value, SSSM3_value, SSSM4_value, SSSM5_value, KSM1_value, OSM_value, BLWNDM_value, PD_value, VDM_value};    
    A=[A;B];
end

%input the name of excel file where user wants to save information
cell=inputdlg('Enter the name of the Excel file to store values:','Excel File Name',1);
name=strcat(cell{1},'.xlsx');
xlswrite(name,A);        


%notify user that values have been stored in excel file
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Values Present in file:');
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',name);
guidata(hObject,handles);

% --------------------------------------------------------------------
function SelectMetrics_Callback(hObject, eventdata, handles)
%display the metrics category panel 
set(handles.MetricsCategory,'Visible','on');
handles.BulkImages=0;
%initially uncheck all
    handles.chkMDv=0;
    handles.chkMSEv=0;
    handles.chkMAEv=0;
    handles.chkIFv=0;
    handles.chkNSMDv=0;
    handles.chkNSPDv=0;
    handles.chkNCCv=0;
    handles.chkCDv=0;
    handles.chkMADv=0;
    handles.chkPSNRv=0;
    handles.chkNHSv=0;
    handles.chkSSIMv=0;
    handles.chkMSSIMv=0;
    handles.chkSSSM1v=0;
    handles.chkSSSM2v=0;
    handles.chkSSSM3v=0;
    handles.chkSSSM4v=0;
    handles.chkSSSM5v=0;
    handles.chkKSM1v=0;
    handles.chkOSMv=0;
    handles.chkBLWNDMv=0;
    handles.chkPDv=0;
    handles.chkVDMv=0;
    handles.chkWSNRv=0;
    handles.chkVSNRv=0;
    handles.chkSNRv=0;
    handles.chkUQIv=0;
    handles.chkNQMv=0;
guidata(hObject,handles);


% --- Executes on button press in chkSptDI.
function chkSptDI_Callback(hObject, eventdata, handles)
% if this is checked it checks all metrics of this category
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.SptDI,'Visible','on');
    handles.chkMDv=1;
    handles.chkMSEv=1;
    handles.chkMAEv=1;
    handles.chkIFv=1;
    set(handles.chkMD,'Value',1);
    set(handles.chkMSE,'Value',1);
    set(handles.chkMAE,'Value',1);
    set(handles.chkIF,'Value',1);
else
    set(handles.SptDI,'Visible','off');
    handles.chkMDv=0;
    handles.chkMSEv=0;
    handles.chkMAEv=0;
    handles.chkIFv=0;
    set(handles.chkMD,'Value',0);
    set(handles.chkMSE,'Value',0);
    set(handles.chkMAE,'Value',0);
    set(handles.chkIF,'Value',0);
end
guidata(hObject,handles);

% --- Executes on button press in chkMSE.
function chkMSE_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkMSEv=1;
else
    handles.chkMSEv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkMD.
function chkMD_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkMDv=1;
else
    handles.chkMDv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkMAE.
function chkMAE_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkMAEv=1;
else
    handles.chkMAEv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkIF.
function chkIF_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkIFv=1;
else
    handles.chkIFv=0;
end
guidata(hObject,handles);


% --- Executes on button press in pbSptDI.
function pbSptDI_Callback(hObject, eventdata, handles)
set(handles.SptDI,'Visible','off');
guidata(hObject,handles);


% --- Executes on button press in chkSpcDI.
function chkSpcDI_Callback(hObject, eventdata, handles)
% if this is checked it checks all metrics of this category
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.SpcDI,'Visible','on');
    handles.chkNSMDv=1;
    handles.chkNSPDv=1;
    set(handles.chkNSMD,'Value',1);
    set(handles.chkNSPD,'Value',1);    
else
    set(handles.SpcDI,'Visible','off');
    handles.chkNSMDv=0;
    handles.chkNSPDv=0;
    set(handles.chkNSMD,'Value',0);
    set(handles.chkNSPD,'Value',0);
end
guidata(hObject,handles);


% --- Executes on button press in chkNSPD.
function chkNSPD_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkNSPDv=1;
else
    handles.chkNSPDv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkNSMD.
function chkNSMD_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkNSMDv=1;
else
    handles.chkNSMDv=0;
end
guidata(hObject,handles);


% --- Executes on button press in pbSpcDI.
function pbSpcDI_Callback(hObject, eventdata, handles)
set(handles.SpcDI,'Visible','off');
guidata(hObject,handles);


% --- Executes on button press in chkCC.
function chkCC_Callback(hObject, eventdata, handles)
% if this is checked it checks all metrics of this category
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.CC,'Visible','on');
    handles.chkNCCv=1;
    handles.chkCDv=1;
    handles.chkMADv=1;
    set(handles.chkNCC,'Value',1);
    set(handles.chkCD,'Value',1);
    set(handles.chkMAD,'Value',1);
else
    set(handles.CC,'Visible','off');
    handles.chkNCCv=0;
    handles.chkCDv=0;
    handles.chkMADv=0;
    set(handles.chkNCC,'Value',0);
    set(handles.chkCD,'Value',0);
    set(handles.chkMAD,'Value',0);
end
guidata(hObject,handles);


% --- Executes on button press in chkCD.
function chkCD_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkCDv=1;
else
    handles.chkCDv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkNCC.
function chkNCC_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkNCCv=1;
else
    handles.chkNCCv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkMAD.
function chkMAD_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkMADv=1;
else
    handles.chkMADv=0;
end
guidata(hObject,handles);


% --- Executes on button press in pbCC.
function pbCC_Callback(hObject, eventdata, handles)
set(handles.CC,'Visible','off');
guidata(hObject,handles);


% --- Executes on button press in chkVQM.
function chkVQM_Callback(hObject, eventdata, handles)
% if this is checked it checks all metrics of this category
if (get(hObject,'Value') == get(hObject,'Max'))
    set(handles.VQM,'Visible','on');
    handles.chkPSNRv=1;
    handles.chkNHSv=1;
    handles.chkSSIMv=1;
    handles.chkMSSIMv=1;
    set(handles.chkPSNR,'Value',1);
    set(handles.chkNHS,'Value',1);
    set(handles.chkSSIM,'Value',1);
    set(handles.chkMSSIM,'Value',1);
    
else
    set(handles.VQM,'Visible','off');
    handles.chkPSNRv=0;
    handles.chkNHSv=0;
    handles.chkSSIMv=0;
    handles.chkMSSIMv=0;
    set(handles.chkPSNR,'Value',0);
    set(handles.chkNHS,'Value',0);
    set(handles.chkSSIM,'Value',0);
    set(handles.chkMSSIM,'Value',0);
end
guidata(hObject,handles);

% --------------------------------------------------------------------
function chkPSNR_Callback(hObject, eventdata, handles)

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkPSNRv=1;
else
    handles.chkPSNRv=0;
end
guidata(hObject,handles);

% --------------------------------------------------------------------
function chkNHS_Callback(hObject, eventdata, handles)

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkNHSv=1;
else
    handles.chkNHSv=0;
end
guidata(hObject,handles);

% --------------------------------------------------------------------
function chkSSIM_Callback(hObject, eventdata, handles)

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkSSIMv=1;
else
    handles.chkSSIMv=0;
end
guidata(hObject,handles);

% --------------------------------------------------------------------
function chkMSSIM_Callback(hObject, eventdata, handles)

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkMSSIMv=1;
else
    handles.chkMSSIMv=0;
end
guidata(hObject,handles);

% --------------------------------------------------------------------
function pbVQM_Callback(hObject, eventdata, handles)
set(handles.VQM,'Visible','off');
guidata(hObject,handles);


% --- Executes on button press in chkBS.
function chkBS_Callback(hObject, eventdata, handles)
% if this is checked it checks all metrics of this category
if (get(hObject,'Value') == get(hObject,'Max'))
	set(handles.BS,'Visible','on');
    handles.chkSSSM1v=1;
    handles.chkSSSM2v=1;
    handles.chkSSSM3v=1;
    handles.chkSSSM4v=1;
    handles.chkSSSM5v=1;
    handles.chkKSM1v=1;
    handles.chkOSMv=1;
    handles.chkBLWNDMv=1;
    handles.chkPDv=1;
    handles.chkVDMv=1;
    set(handles.chkSSSM1,'Value',1);
    set(handles.chkSSSM2,'Value',1);
    set(handles.chkSSSM3,'Value',1);
    set(handles.chkSSSM4,'Value',1);
    set(handles.chkSSSM5,'Value',1);
    set(handles.chkKSM1,'Value',1);
    set(handles.chkOSM,'Value',1);
    set(handles.chkBLWNDM,'Value',1);
    set(handles.chkPD,'Value',1);
    set(handles.chkVDM,'Value',1);
else
    set(handles.BS,'Visible','off');
    handles.chkSSSM1v=0;
    handles.chkSSSM2v=0;
    handles.chkSSSM3v=0;
    handles.chkSSSM4v=0;
    handles.chkSSSM5v=0;
    handles.chkKSM1v=0;
    handles.chkOSMv=0;
    handles.chkBLWNDMv=0;
    handles.chkPDv=0;
    handles.chkVDMv=0;
    set(handles.chkSSSM1,'Value',0);
    set(handles.chkSSSM2,'Value',0);
    set(handles.chkSSSM3,'Value',0);
    set(handles.chkSSSM4,'Value',0);
    set(handles.chkSSSM5,'Value',0);
    set(handles.chkKSM1,'Value',0);
    set(handles.chkOSM,'Value',0);
    set(handles.chkBLWNDM,'Value',0);
    set(handles.chkPD,'Value',0);
    set(handles.chkVDM,'Value',0);
end
guidata(hObject,handles);


% --- Executes on button press in chkSSSM2.
function chkSSSM2_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkSSSM2v=1;
else
    handles.chkSSSM2v=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkSSSM1.
function chkSSSM1_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkSSSM1v=1;
else
    handles.chkSSSM1v=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkSSSM3.
function chkSSSM3_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkSSSM3v=1;
else
    handles.chkSSSM3v=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkSSSM4.
function chkSSSM4_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkSSSM4v=1;
else
    handles.chkSSSM4v=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkKSM1.
function chkKSM1_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkKSM1v=1;
else
    handles.chkKSM1v=0;
end
guidata(hObject,handles);

% --- Executes on button press in chkOSM.
function chkOSM_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkOSMv=1;
else
    handles.chkOSMv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkBLWNDM.
function chkBLWNDM_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkBLWNDMv=1;
else
    handles.chkBLWNDMv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkSSSM5.
function chkSSSM5_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkSSSM5v=1;
else
    handles.chkSSSM5v=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkPD.
function chkPD_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkPDv=1;
else
    handles.chkPDv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkVDM.
function chkVDM_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkVDMv=1;
else
    handles.chkVDMv=0;
end
guidata(hObject,handles);


% --- Executes on button press in pbBS.
function pbBS_Callback(hObject, eventdata, handles)
set(handles.BS,'Visible','off');
guidata(hObject,handles);


% --- Executes on button press in chkOthers.
function chkOthers_Callback(hObject, eventdata, handles)
% if this is checked it checks all metrics of this category
if (get(hObject,'Value') == get(hObject,'Max'))
	set(handles.Othrs,'Visible','on');
    handles.chkWSNRv=1;
    handles.chkVSNRv=1;
    handles.chkSNRv=1;
    handles.chkUQIv=1;
    handles.chkNQMv=1;
    set(handles.chkWSNR,'Value',1);
    set(handles.chkVSNR,'Value',1);
    set(handles.chkSNR,'Value',1);
    set(handles.chkUQI,'Value',1);
    set(handles.chkNQM,'Value',1);
else
    set(handles.Othrs,'Visible','off');
    handles.chkWSNRv=0;
    handles.chkVSNRv=0;
    handles.chkSNRv=0;
    handles.chkUQIv=0;
    handles.chkNQMv=0;
    set(handles.chkWSNR,'Value',0);
    set(handles.chkVSNR,'Value',0);
    set(handles.chkSNR,'Value',0);
    set(handles.chkUQI,'Value',0);
    set(handles.chkNQM,'Value',0);
end
guidata(hObject,handles);

% --- Executes on button press in chkWSNR.
function chkWSNR_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkWSNRv=1;
else
    handles.chkWSNRv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkVSNR.
function chkVSNR_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkVSNRv=1;
else
    handles.chkVSNRv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkSNR.
function chkSNR_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkSNRv=1;
else
    handles.chkSNRv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkUQI.
function chkUQI_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkUQIv=1;
else
    handles.chkUQIv=0;
end
guidata(hObject,handles);


% --- Executes on button press in chkNQM.
function chkNQM_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	handles.chkNQMv=1;
else
    handles.chkNQMv=0;
end
guidata(hObject,handles);


% --- Executes on button press in pbOthers.
function pbOthers_Callback(hObject, eventdata, handles)
set(handles.Othrs,'Visible','off');
guidata(hObject,handles);


function pbFinalMetrics_Callback(hObject, eventdata, handles)
if(handles.BulkImages==0)
% get reference and test image from handles
% give errors if reference and test images are not selected
if isfield(handles,'Ref')
    Ref=handles.Ref;
else
    msgbox(sprintf('Error!! Reference Image not selected'),'Error','Error');
    return
end

if isfield(handles,'Test')
    Test=handles.Test;
else
    msgbox(sprintf('Error!! Test Image not selected'),'Error','Error');
    return
end
set(handles.MetricsCategory,'Visible','off');
RefName=handles.RefName;
TestName=handles.TestName;
[pathstr,RefImageName,ext]=fileparts(RefName);
[pathstr,TestImageName,ext]=fileparts(TestName);

A={'Reference Image =',RefImageName;
    'Test Image =',TestImageName;
    ' ',' '};

if(handles.chkMDv==1)
    MD_value = MD(Ref,Test);
    B={'Maximum Difference',MD_value};
    A=[A;B];
end

if(handles.chkMSEv==1)
    MSE_value = MSE(Ref,Test);
    B={'Maximum Squared Error',MSE_value};
    A=[A;B];
end

if(handles.chkMAEv==1)
    MAE_value = MAE(Ref,Test);
    B={'Maximum Absolute Error',MAE_value};
    A=[A;B];
end

if(handles.chkIFv==1)
    IF_value = IF(Ref,Test);
    B={'Image Fidelity',IF_value};
    A=[A;B];
end

if(handles.chkNSMDv==1)
    NSMD_value = NSMD(Ref,Test);
    B={'Normalized Spectral Magnitude Distortion ',NSMD_value};
    A=[A;B];
end

if(handles.chkNSPDv==1)
    NSPD_value = NSPD(Ref,Test);
    B={'Normalized Spectral Phase Distortion ',NSPD_value};
    A=[A;B];
end

if(handles.chkNCCv==1)
    NCC_value = NCC(Ref,Test);
    B={'Normalized Cross-Correlation ',NCC_value};
    A=[A;B];
end

if(handles.chkCDv==1)
    CD_value = CD(Ref,Test);
    B={'Czenakowski Distance ',CD_value};
    A=[A;B];
end

if(handles.chkMADv==1)
    MAD_value = MAD(Ref,Test);
    B={'Mean Angular Difference ',MAD_value};
    A=[A;B];
end

if(handles.chkPSNRv==1)
    PSNR_value = PSNR(Ref,Test);
    B={'Peak Signal-to-Noise Ratio ',PSNR_value};
    A=[A;B];
end

if(handles.chkNHSv==1)
    NHS_value = NHS(Ref,Test);
    B={'Normalized Histogram Similarity ',NHS_value};
    A=[A;B];
end

if(handles.chkSSIMv==1)
    SSIM_value = SSIM(Ref,Test);
    B={'Structural Similarity ',SSIM_value};
    A=[A;B];
end

if(handles.chkMSSIMv==1)
    MSSIM_value = MSSIM(Ref,Test);
    B={'Multi-Scale Structural Similarity ',MSSIM_value};
    A=[A;B];
end

if(handles.chkSSSM1v==1)
    SSSM1_value = SSSM1(Test);
    B={'Sokal & Sneath Similarity Measure 1  ',SSSM1_value};
    A=[A;B];
end

if(handles.chkSSSM2v==1)
    SSSM2_value = SSSM2(Test);
    B={'Sokal & Sneath Similarity Measure 2  ',SSSM2_value};
    A=[A;B];
end

if(handles.chkSSSM3v==1)
    SSSM3_value = SSSM3(Test);
    B={'Sokal & Sneath Similarity Measure 3  ',SSSM3_value};
    A=[A;B];
end

if(handles.chkSSSM4v==1)
    SSSM4_value = SSSM4(Test);
    B={'Sokal & Sneath Similarity Measure 4  ',SSSM4_value};
    A=[A;B];
end

if(handles.chkSSSM5v==1)
    SSSM5_value = SSSM5(Test);
    B={'Sokal & Sneath Similarity Measure 5  ',SSSM5_value};
    A=[A;B];
end

if(handles.chkKSM1v==1)
    KSM1_value = KSM1(Test);
    B={'Kulczynski Similarity Measure 1',KSM1_value};
    A=[A;B];
end

if(handles.chkOSMv==1)
    OSM_value = OSM(Test);
    B={'Ochiai Similarity Measure ',OSM_value};
    A=[A;B];
end

if(handles.chkBLWNDMv==1)
    BLWNDM_value = BLWNDM(Test);
    B={'Binary Lance & Williams Nonmetric Dissimilarity Measure ',BLWNDM_value};
    A=[A;B];
end

if(handles.chkPDv==1)
    PD_value = PD(Test);
    B={'Pattern Difference  ',PD_value};
    A=[A;B];
end

if(handles.chkVDMv==1)
    VDM_value = VDM(Test);
    B={'Variance Dissimilarity Measure',VDM_value};
    A=[A;B];
end

if(handles.chkVSNRv==1)
    VSNR_value = VSNR(Ref,Test);
    B={'Visual Signal-to-Noise Ratio',VSNR_value};
    A=[A;B];
end

if(handles.chkWSNRv==1)
    WSNR_value = WSNR(Ref,Test);
    B={'Weighted Signal-to-Noise Ratio',WSNR_value};
    A=[A;B];
end

if(handles.chkSNRv==1)
    SNR_value = SNR(Ref,Test);
    B={'Signal-to-Noise Ratio',SNR_value};
    A=[A;B];
end

if(handles.chkUQIv==1)
    UQI_value = UQI(Ref,Test);
    B={'Universal Quality Index',UQI_value};
    A=[A;B];
end

if(handles.chkNQMv==1)
    NQM_value = NQM(Ref,Test);
    B={'Noise Quality Measure',NQM_value};
    A=[A;B];
end

cell=inputdlg('Enter the name of the Excel file to store values:','Excel File Name',1);
name=strcat(cell{1},'.xlsx');
xlswrite(name,A);
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Values Present in file:');
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',name);







%if select for bulk images

else
%select directory of reference images
Path1=uigetdir('\','Select folder containing Reference Images');

%give error message if directory not selected
if ~Path1
    msgbox(sprintf('Error!! Reference Image folder not selected'),'Error','Error');
    return
end

%select directory of test images
Path2=uigetdir('\','Select folder containing Test Images');

%give error message if directory not selected
if ~Path2
    msgbox(sprintf('Error!! Test Image folder not selected'),'Error','Error');
    return
end

Path1Files=numel(dir(Path1));
Path2Files=numel(dir(Path2));

%check if there are equal reference and test images in directories
if(Path1Files==Path2Files)
    n=Path1Files-2;
else
    msgbox(sprintf('Error!! Number of Reference Image files and Test Image files are not equal!!'),'Error','Error');
    return
end

%store initial names of all selected metrics in matrix 
A={'Reference Image ','Test Image '};
if(handles.chkMSEv==1)
    A=[A,'Maximum Squared Error'];
end

if(handles.chkMAEv==1)
    A=[A,'Maximum Absolute Error'];
end

if(handles.chkIFv==1)
    A=[A,'Image Fidelity'];
end

if(handles.chkNSMDv==1)
    A=[A,'Normalized Spectral Magnitude Distortion '];
end

if(handles.chkNSPDv==1)
    A=[A,'Normalized Spectral Phase Distortion '];
end

if(handles.chkNCCv==1)
    A=[A,'Normalized Cross-Correlation '];
end

if(handles.chkCDv==1)
    A=[A,'Czenakowski Distance '];
end

if(handles.chkMADv==1)
    A=[A,'Mean Angular Difference '];
end

if(handles.chkPSNRv==1)
    A=[A,'Peak Signal-to-Noise Ratio '];
end

if(handles.chkNHSv==1)
    A=[A,'Normalized Histogram Similarity '];
end

if(handles.chkSSIMv==1)
    A=[A,'Structural Similarity '];
end

if(handles.chkMSSIMv==1)
    A=[A,'Multi-Scale Structural Similarity '];
end

if(handles.chkSSSM1v==1)
    A=[A,'Sokal & Sneath Similarity Measure 1  '];
end

if(handles.chkSSSM2v==1)
    A=[A,'Sokal & Sneath Similarity Measure 2  '];
end

if(handles.chkSSSM3v==1)
    A=[A,'Sokal & Sneath Similarity Measure 3  '];
end

if(handles.chkSSSM4v==1)
    A=[A,'Sokal & Sneath Similarity Measure 4  '];
end

if(handles.chkSSSM5v==1)
    A=[A,'Sokal & Sneath Similarity Measure 5  '];
end

if(handles.chkKSM1v==1)
    A=[A,'Kulczynski Similarity Measure 1'];
end

if(handles.chkOSMv==1)
    A=[A,'Ochiai Similarity Measure '];
end

if(handles.chkBLWNDMv==1)
    A=[A,'Binary Lance & Williams Nonmetric Dissimilarity Measure '];
end

if(handles.chkPDv==1)
    A=[A,'Pattern Difference  '];
end

if(handles.chkVDMv==1)
    A=[A,'Variance Dissimilarity Measure'];
end

if(handles.chkVSNRv==1)
    A=[A,'Visual Signal-to-Noise Ratio'];
end

if(handles.chkWSNRv==1)
    A=[A,'Weighted Signal-to-Noise Ratio'];
end

if(handles.chkSNRv==1)
    A=[A,'Signal-to-Noise Ratio'];
end

if(handles.chkUQIv==1)
    A=[A,'Universal Quality Index'];
end

if(handles.chkNQMv==1)
    A=[A,'Noise Quality Measure'];
end
display(A);
%iterate for all images
for i=1:n
    if(i<10)
        j=num2str(i);
        num=strcat('0','0',j);
    elseif (i<100) 
        j=num2str(i);
        num=strcat('0',j);
    else
        j=num2str(i);
        num=j;
    end
    
    RefPath=strcat(Path1,'\*',num,'.*');
    TestPath=strcat(Path2,'\*',num,'.*');
    
    fileRef = dir(RefPath);
    RefImagePath=strcat(Path1,'\',fileRef.name);
    Ref=imread(RefImagePath);

    
    fileTest= dir(TestPath);
    TestImagePath=strcat(Path2,'\',fileTest.name);
    Test=imread(TestImagePath);
    B={fileRef.name,fileTest.name};
    %calcuate all metrics for particular set of images
if(handles.chkMDv==1)
   MD_value = MD(Ref,Test);
   B=[B,MD_value];
end

if(handles.chkMSEv==1)
    MSE_value = MSE(Ref,Test);
    B=[B,MSE_value];
end

if(handles.chkMAEv==1)
    MAE_value = MAE(Ref,Test);
    B=[B,MAE_value];
end

if(handles.chkIFv==1)
    IF_value = IF(Ref,Test);
    B=[B,IF_value];
end

if(handles.chkNSMDv==1)
    NSMD_value = NSMD(Ref,Test);
    B=[B,NSMD_value];
end

if(handles.chkNSPDv==1)
    NSPD_value = NSPD(Ref,Test);
    B=[B,NSPD_value];
end

if(handles.chkNCCv==1)
    NCC_value = NCC(Ref,Test);
    B=[B,NCC_value];
end

if(handles.chkCDv==1)
    CD_value = CD(Ref,Test);
    B=[B,CD_value];
end

if(handles.chkMADv==1)
    MAD_value = MAD(Ref,Test);
    B=[B,MAD_value];
end

if(handles.chkPSNRv==1)
    PSNR_value = PSNR(Ref,Test);
    B=[B,PSNR_value];
end

if(handles.chkNHSv==1)
    NHS_value = NHS(Ref,Test);
    B=[B,NHS_value];
end

if(handles.chkSSIMv==1)
    SSIM_value = SSIM(Ref,Test);
    B=[B,SSIM_value];
end

if(handles.chkMSSIMv==1)
    MSSIM_value = MSSIM(Ref,Test);
    B=[B,MSSIM_value];
end

if(handles.chkSSSM1v==1)
    SSSM1_value = SSSM1(Test);
    B=[B,SSSM1_value];
end

if(handles.chkSSSM2v==1)
    SSSM2_value = SSSM2(Test);
    B=[B,SSSM2_value];
end

if(handles.chkSSSM3v==1)
    SSSM3_value = SSSM3(Test);
    B=[B,SSSM3_value];
end

if(handles.chkSSSM4v==1)
    SSSM4_value = SSSM4(Test);
    B=[B,SSSM4_value];
end

if(handles.chkSSSM5v==1)
    SSSM5_value = SSSM5(Test);
    B=[B,SSSM5_value];
end

if(handles.chkKSM1v==1)
    KSM1_value = KSM1(Test);
    B=[B,KSM1_value];
end

if(handles.chkOSMv==1)
    OSM_value = OSM(Test);
    B=[B,OSM_value];
end

if(handles.chkBLWNDMv==1)
    BLWNDM_value = BLWNDM(Test);
    B=[B,BLWNDM_value];
end

if(handles.chkPDv==1)
    PD_value = PD(Test);
    B=[B,PD_value];
end

if(handles.chkVDMv==1)
    VDM_value = VDM(Test);
    B=[B,VDM_value];
end

if(handles.chkVSNRv==1)
    VSNR_value = VSNR(Ref,Test);
    B=[B,VSNR_value];
end

if(handles.chkWSNRv==1)
    WSNR_value = WSNR(Ref,Test);
    B=[B,WSNR_value];
end

if(handles.chkSNRv==1)
    SNR_value = SNR(Ref,Test);
    B=[B,SNR_value];
end

if(handles.chkUQIv==1)
    UQI_value = UQI(Ref,Test);
    B=[B,UQI_value];
end

if(handles.chkNQMv==1)
    NQM_value = NQM(Ref,Test);
    B=[B,NQM_value];
end
    display(B);
    %store in in matrix
    A=[A;B];
end

%input the name of excel file where user wants to save information
cell=inputdlg('Enter the name of the Excel file to store values:','Excel File Name',1);
name=strcat(cell{1},'.xlsx');
xlswrite(name,A);        


%notify user that values have been stored in excel file
set(handles.MetricName,'Visible','on');
set(handles.MetricName,'String','Values Present in file:');
set(handles.MetricValue,'Visible','on');
set(handles.MetricValue,'String',name);    
    
end
guidata(hObject,handles);


% --------------------------------------------------------------------
function BulkSelectMetrics_Callback(hObject, eventdata, handles)
%display the metrics category panel 
set(handles.MetricsCategory,'Visible','on');
handles.BulkImages=1;
%initially uncheck all
    handles.chkMDv=0;
    handles.chkMSEv=0;
    handles.chkMAEv=0;
    handles.chkIFv=0;
    handles.chkNSMDv=0;
    handles.chkNSPDv=0;
    handles.chkNCCv=0;
    handles.chkCDv=0;
    handles.chkMADv=0;
    handles.chkPSNRv=0;
    handles.chkNHSv=0;
    handles.chkSSIMv=0;
    handles.chkMSSIMv=0;
    handles.chkSSSM1v=0;
    handles.chkSSSM2v=0;
    handles.chkSSSM3v=0;
    handles.chkSSSM4v=0;
    handles.chkSSSM5v=0;
    handles.chkKSM1v=0;
    handles.chkOSMv=0;
    handles.chkBLWNDMv=0;
    handles.chkPDv=0;
    handles.chkVDMv=0;
    handles.chkWSNRv=0;
    handles.chkVSNRv=0;
    handles.chkSNRv=0;
    handles.chkUQIv=0;
    handles.chkNQMv=0;
guidata(hObject,handles);
