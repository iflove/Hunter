.class Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;
.super Ljava/lang/Object;
.source "H5BasePage.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/basebridge/H5BasePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalWebSettings"
.end annotation


# instance fields
.field private mUaString:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/nebula/basebridge/H5BasePage;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/basebridge/H5BasePage;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;->this$0:Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/basebridge/H5BasePage;Lcom/alipay/mobile/nebula/basebridge/H5BasePage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/basebridge/H5BasePage;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/basebridge/H5BasePage$1;

    .line 775
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;-><init>(Lcom/alipay/mobile/nebula/basebridge/H5BasePage;)V

    return-void
.end method


# virtual methods
.method public getAllowContentAccess()Z
    .locals 1

    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 1

    .line 1116
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .line 1106
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockNetworkImage()Z
    .locals 1

    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .line 1176
    const/4 v0, 0x0

    return v0
.end method

.method public getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .line 966
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDatabaseEnabled()Z
    .locals 1

    .line 1071
    const/4 v0, 0x0

    return v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 1091
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 1

    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .line 1146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultZoom()Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1

    .line 891
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public getDomStorageEnabled()Z
    .locals 1

    .line 1081
    const/4 v0, 0x0

    return v0
.end method

.method public getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .line 976
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .line 936
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .line 1136
    const/4 v0, 0x0

    return v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    .line 1046
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutAlgorithm()Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1

    .line 916
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 1

    .line 1026
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumFontSize()I
    .locals 1

    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumLogicalFontSize()I
    .locals 1

    .line 996
    const/4 v0, 0x0

    return v0
.end method

.method public getPluginState()Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .line 1126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .line 946
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method public getSavePassword()Z
    .locals 1

    .line 861
    const/4 v0, 0x0

    return v0
.end method

.method public getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .line 956
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .line 926
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextSize()Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .line 881
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextZoom()I
    .locals 1

    .line 871
    const/4 v0, 0x0

    return v0
.end method

.method public getUseWideViewPort()Z
    .locals 1

    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;->mUaString:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 837
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 827
    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1122
    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1112
    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1062
    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 1067
    return-void
.end method

.method public setBlockNetworkImage(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1042
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 807
    return-void
.end method

.method public setCacheMode(I)V
    .locals 0
    .param p1, "i"    # I

    .line 1182
    return-void
.end method

.method public setCursiveFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 972
    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1077
    return-void
.end method

.method public setDatabasePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 1097
    return-void
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 0
    .param p1, "i"    # I

    .line 1022
    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 0
    .param p1, "i"    # I

    .line 1012
    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 1152
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 817
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1087
    return-void
.end method

.method public setEnableFastScroller(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1187
    return-void
.end method

.method public setFantasyFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 982
    return-void
.end method

.method public setFixedFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 942
    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 1057
    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1102
    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1142
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1052
    return-void
.end method

.method public setLayoutAlgorithm(Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;)V
    .locals 0
    .param p1, "layoutAlgorithm"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .line 922
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 847
    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1032
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 797
    return-void
.end method

.method public setMinimumFontSize(I)V
    .locals 0
    .param p1, "i"    # I

    .line 992
    return-void
.end method

.method public setMinimumLogicalFontSize(I)V
    .locals 0
    .param p1, "i"    # I

    .line 1002
    return-void
.end method

.method public setMixedContentMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 1197
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 1172
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 0
    .param p1, "i"    # I

    .line 1192
    return-void
.end method

.method public setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V
    .locals 0
    .param p1, "pluginState"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .line 1132
    return-void
.end method

.method public setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 952
    return-void
.end method

.method public setSaveFormData(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 857
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 867
    return-void
.end method

.method public setSerifFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 962
    return-void
.end method

.method public setStandardFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 932
    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 907
    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 782
    return-void
.end method

.method public setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V
    .locals 0
    .param p1, "textSize"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 887
    return-void
.end method

.method public setTextZoom(I)V
    .locals 0
    .param p1, "i"    # I

    .line 877
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 902
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 1161
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;->mUaString:Ljava/lang/String;

    .line 1162
    return-void
.end method

.method public supportMultipleWindows()Z
    .locals 1

    .line 911
    const/4 v0, 0x0

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .line 786
    const/4 v0, 0x0

    return v0
.end method
