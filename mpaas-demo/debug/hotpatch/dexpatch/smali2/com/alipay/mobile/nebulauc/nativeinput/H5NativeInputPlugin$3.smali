.class Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;
.super Ljava/lang/Object;
.source "H5NativeInputPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showNativeInputInternal(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 698
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # invokes: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$200(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)I

    .line 705
    return-void
.end method
