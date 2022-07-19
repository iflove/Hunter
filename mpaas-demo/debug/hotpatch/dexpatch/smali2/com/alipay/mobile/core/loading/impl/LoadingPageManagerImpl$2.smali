.class Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$2;
.super Ljava/lang/Object;
.source "LoadingPageManagerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->registerLoadingPageHandler(Lcom/alipay/mobile/framework/loading/LoadingPageHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobile/framework/loading/LoadingPageHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$2;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/framework/loading/LoadingPageHandler;Lcom/alipay/mobile/framework/loading/LoadingPageHandler;)I
    .locals 2
    .param p1, "lhs"    # Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
    .param p2, "rhs"    # Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    .line 171
    invoke-interface {p1}, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;->getPriority()I

    move-result v0

    invoke-interface {p2}, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 168
    check-cast p1, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    check-cast p2, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$2;->compare(Lcom/alipay/mobile/framework/loading/LoadingPageHandler;Lcom/alipay/mobile/framework/loading/LoadingPageHandler;)I

    move-result p1

    return p1
.end method
