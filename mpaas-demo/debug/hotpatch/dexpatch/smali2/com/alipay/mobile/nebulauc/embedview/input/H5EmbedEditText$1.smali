.class Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$1;
.super Ljava/lang/Object;
.source "H5EmbedEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->init(ILjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

.field final synthetic val$viewId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$1;->val$viewId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$1;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$1;->val$viewId:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->initEditText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->access$000(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;Ljava/lang/String;)V

    .line 161
    return-void
.end method
