function varargout = project1(varargin)
% PROJECT1 MATLAB code for project1.fig
%      PROJECT1, by itself, creates a new PROJECT1 or raises the existing
%      singleton*.
%
%      H = PROJECT1 returns the handle to a new PROJECT1 or the handle to
%      the existing singleton*.
%
%      PROJECT1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT1.M with the given input arguments.
%
%      PROJECT1('Property','Value',...) creates a new PROJECT1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project1

% Last Modified by GUIDE v2.5 14-Jul-2019 10:30:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project1_OpeningFcn, ...
                   'gui_OutputFcn',  @project1_OutputFcn, ...
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


% --- Executes just before project1 is made visible.
function project1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project1 (see VARARGIN)

% Choose default command line output for project1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('C:/Users/ARIEF SETYO NUGROHO/Pictures/kulit iritasi/i1.jpg');
b = rgb2gray(a);
c1 = imhist(b);
a = imread('C:/Users/ARIEF SETYO NUGROHO/Pictures/kulit iritasi/i2.jpg');
b = rgb2gray(a);
c2 = imhist(b);
a = imread('C:/Users/ARIEF SETYO NUGROHO/Pictures/kulit iritasi/i3.jpg');
b = rgb2gray(a);
c3 = imhist(b);
a = imread('C:/Users/ARIEF SETYO NUGROHO/Pictures/kulit iritasi/k1.jpg');
b = rgb2gray(a);
c4 = imhist(b);
a = imread('C:/Users/ARIEF SETYO NUGROHO/Pictures/kulit iritasi/k2.jpg');
b = rgb2gray(a);
c5 = imhist(b);
a = imread('C:/Users/ARIEF SETYO NUGROHO/Pictures/kulit iritasi/k3.jpg');
b = rgb2gray(a);
c6 = imhist(b);


[namafile, formatfile] = uigetfile({'.jpg'}, 'membuka gambar');
image = imread([formatfile, namafile]);
guidata(hObject, handles);
axes(handles.axes1);
imshow(image);
e = rgb2gray(image);
f = imhist(e);

d1=dmanhattan(c1,f);
d2=dmanhattan(c2,f);
d3=dmanhattan(c3,f);
d4=dmanhattan(c4,f);
d5=dmanhattan(c5,f);
d6=dmanhattan(c6,f);
d= [d1;d2;d3;d4;d5;d6];

minimum=min(d);
if minimum == d(1)
    Hasil='IRITASI'
elseif minimum == d(2)
    Hasil='IRITASI'
elseif minimum == d(3)
    Hasil='IRITASI'
elseif minimum == d(4)
    Hasil='TIDAK IRITASI'
elseif minimum == d(5)
    Hasil='TIDAK IRITASI'
elseif minimum == d(6)
    Hasil='TIDAK IRITASI'
end
set(handles.text3,'string',num2str(Hasil));
