.class Lcom/alipay/mobile/h5container/api/H5ViewCache$1$1;
.super Ljava/lang/Object;
.source "H5ViewCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5ViewCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5ViewCache$1;

.field final synthetic val$id:I

.field final synthetic val$layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5ViewCache$1;ILandroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5ViewCache$1;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5ViewCache$1$1;->this$0:Lcom/alipay/mobile/h5container/api/H5ViewCache$1;

    iput p2, p0, Lcom/alipay/mobile/h5container/api/H5ViewCache$1$1;->val$id:I

    iput-object p3, p0, Lcom/alipay/mobile/h5container/api/H5ViewCache$1$1;->val$layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 62
    # getter for: Lcom/alipay/mobile/h5container/api/H5ViewCache;->sViewCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5ViewCache;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/h5container/api/H5ViewCache$1$1;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5ViewCache$1$1;->val$layoutInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/alipay/mobile/h5container/api/H5ViewCache$1$1;->val$id:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
