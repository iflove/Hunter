.class Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;
.super Ljava/lang/Object;
.source "H5NativeInputPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->addDoneButtonNew(Lcom/alipay/mobile/h5container/api/H5Page;)V
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

    .line 862
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 865
    const-string v0, "H5NativeInputPlugin"

    const-string v1, "H5NativeInputButton click complete"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # getter for: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$300(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # getter for: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$300(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 868
    .local v0, "extData":Lcom/alibaba/fastjson/JSONObject;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # getter for: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$300(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->preHandleTextBeforeSendToWeb(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$400(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # getter for: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeInt:I
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$500(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    # getter for: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$600(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "complete"

    # invokes: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v5, v2, v3, v4}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$700(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 871
    .end local v0    # "extData":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;->this$0:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V
    invoke-static {v0, v2, v2, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$800(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;ZZZ)V

    .line 872
    return-void
.end method
