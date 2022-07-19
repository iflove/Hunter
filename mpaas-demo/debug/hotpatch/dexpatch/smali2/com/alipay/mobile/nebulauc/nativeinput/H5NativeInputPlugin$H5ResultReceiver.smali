.class Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;
.super Landroid/os/ResultReceiver;
.source "H5NativeInputPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H5ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1253
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 1254
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1255
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 1259
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 1261
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1260
    const-string v1, "H5NativeInputPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # setter for: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsHiding:Z
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$1302(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Z)Z

    .line 1272
    const-string v0, "onReceiveResult, keyboard hide success"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    goto :goto_1

    .line 1264
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # setter for: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsShowing:Z
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$902(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Z)Z

    .line 1265
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # getter for: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDisableNewDoneBtn:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$1000(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1266
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # getter for: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$1100(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->addDoneButtonNew(Lcom/alipay/mobile/h5container/api/H5Page;)V
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$1200(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1268
    :cond_3
    const-string v0, "onReceiveResult, keyboard show success"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    nop

    .line 1277
    :goto_1
    return-void
.end method
