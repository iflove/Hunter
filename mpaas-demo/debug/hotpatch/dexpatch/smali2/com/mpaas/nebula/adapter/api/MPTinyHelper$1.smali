.class Lcom/mpaas/nebula/adapter/api/MPTinyHelper$1;
.super Ljava/lang/Object;
.source "MPTinyHelper.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/adapter/api/MPTinyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    .line 34
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$1;->this$0:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customLoadingViewClassName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$1;->this$0:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    # getter for: Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mLoadingClassName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->access$100(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matchAppIdCustom(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "host":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$1;->this$0:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    # getter for: Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mVHost:Ljava/lang/String;
    invoke-static {v2}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->access$000(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 42
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
