.class public abstract Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5NumInputKeyboard.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;


# static fields
.field private static final GET_IF_RANDOM_JS:Ljava/lang/String; = "document.activeElement && document.activeElement.getAttribute && document.activeElement.getAttribute(\"data-randomnumber\")"

.field private static final GET_INPUT_TYPE_JS:Ljava/lang/String; = "document.activeElement && document.activeElement.getAttribute && document.activeElement.getAttribute(\"data-keyboard\")"

.field private static sConfigured:Z

.field private static sEnableCustomKeyboard:Z

.field private static sEnableCustomKeyboardInH5:Z

.field static sNeedClearType:Z


# instance fields
.field mFallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;",
            ">;"
        }
    .end annotation
.end field

.field mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

.field private mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private mHasShownDisclaimerHint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sConfigured:Z

    .line 22
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboardInH5:Z

    .line 23
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboard:Z

    .line 27
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sNeedClearType:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mHasShownDisclaimerHint:Z

    return-void
.end method

.method private static getConfig()V
    .locals 6

    .line 94
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sConfigured:Z

    if-nez v0, :cond_2

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sConfigured:Z

    .line 97
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 98
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_2

    .line 99
    const-string v1, "h5_useCustomKeyboardInH5"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "enableCustomKeyboardInH5":Ljava/lang/String;
    const-string v2, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboardInH5:Z

    .line 104
    :cond_0
    const-string v2, "h5_useCustomKeyboard"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "enableCustomKeyboard":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "true"

    if-nez v3, :cond_1

    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboard:Z

    .line 109
    :cond_1
    const-string v3, "h5_customKeyboardClearType"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "customKeyboardClearType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sNeedClearType:Z

    .line 115
    .end local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v1    # "enableCustomKeyboardInH5":Ljava/lang/String;
    .end local v2    # "enableCustomKeyboard":Ljava/lang/String;
    .end local v3    # "customKeyboardClearType":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getInjectJS()Ljava/lang/String;
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->isCustomKeyboardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, ""

    return-object v0

    .line 46
    :cond_0
    const-string v0, "AlipayJSBridge.call(\"setKeyboardType\", {\n  type: document.activeElement && document.activeElement.getAttribute && document.activeElement.getAttribute(\"data-keyboard\")  ,randomnumber: document.activeElement && document.activeElement.getAttribute && document.activeElement.getAttribute(\"data-randomnumber\")})"

    .line 50
    .local v0, "a":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "document.addEventListener(\'click\', function(event){if(event.target&&event.target.tagName.toLowerCase()==\'input\'){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";}}, true);document.addEventListener(\'focus\', function(event){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";}, true);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method isCustomKeyboardEnabled()Z
    .locals 7

    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 75
    .local v1, "isTinyApp":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 76
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    .line 78
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v3, :cond_0

    .line 79
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "isTinyApp"

    invoke-static {v4, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 83
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->getConfig()V

    .line 86
    sget-boolean v3, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboardInH5:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_2

    .line 87
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboard:Z

    .line 90
    :cond_2
    return v0
.end method

.method needShowDisclaimerPrompt()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mHasShownDisclaimerHint:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->isNeedKeyboardHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mHasShownDisclaimerHint:Z

    .line 125
    return v1

    .line 128
    .end local v0    # "mode":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 59
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 60
    instance-of v0, p1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 63
    :cond_0
    return-void
.end method

.method public setFallback(Ljava/lang/Class;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mFallbackClass:Ljava/lang/Class;

    .line 40
    return-void
.end method

.method public setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V
    .locals 0
    .param p1, "h5NativeOnSoftKeyboardListener"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    .line 68
    return-void
.end method
