function varargout = riwayat2(varargin)
% RIWAYAT2 MATLAB code for riwayat2.fig
%      RIWAYAT2, by itself, creates a new RIWAYAT2 or raises the existing
%      singleton*.
%
%      H = RIWAYAT2 returns the handle to a new RIWAYAT2 or the handle to
%      the existing singleton*.
%
%      RIWAYAT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RIWAYAT2.M with the given input arguments.
%
%      RIWAYAT2('Property','Value',...) creates a new RIWAYAT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before riwayat2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to riwayat2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help riwayat2

% Last Modified by GUIDE v2.5 05-Nov-2019 11:23:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @riwayat2_OpeningFcn, ...
                   'gui_OutputFcn',  @riwayat2_OutputFcn, ...
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


% --- Executes just before riwayat2 is made visible.
function riwayat2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to riwayat2 (see VARARGIN)

% Choose default command line output for riwayat2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
movegui(hObject, 'center');

% UIWAIT makes riwayat2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
filename = 'Book2.xlsx';
[~,~,data] = xlsread(filename);
no_base = (data(:,2));
k = 4;

while k<=numel(no_base)
    nama = data(k,2);
    ttl = data(k,3);
    if isnan(ttl)
        ttl = '';
    end
    jenis_kelamin = data(k,4);
    alamat = data(k,5);
    usia = data(k,6);
    hasil = data(k,7);
    data2 ={nama,ttl,jenis_kelamin,alamat,usia,hasil};
    k = k+1;
end
set(handles.uitable1,'Data',data2,'ForegroundColor',[0 0 0])

% --- Outputs from this function are returned to the command line.
function varargout = riwayat2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
