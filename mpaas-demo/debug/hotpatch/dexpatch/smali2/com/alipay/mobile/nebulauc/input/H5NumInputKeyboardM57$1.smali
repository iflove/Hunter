.class Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;
.super Ljava/lang/Object;
.source "H5NumInputKeyboardM57.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5InputOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardConfirm()V
    .locals 5

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 78
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 80
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    const-string v3, "keyboardConfirm"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 84
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    return-void
.end method

.method public resizeAndHideKeyboard()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->this$0:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->onCustomKeyboardHide()V

    .line 66
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1$1;-><init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 73
    return-void
.end method
