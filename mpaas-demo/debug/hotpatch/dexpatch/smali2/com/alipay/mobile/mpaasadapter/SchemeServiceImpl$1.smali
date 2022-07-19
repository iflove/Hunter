.class Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl$1;
.super Ljava/lang/Object;
.source "SchemeServiceImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl$1;->a:Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;)I
    .locals 2
    .param p1, "lhs"    # Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;
    .param p2, "rhs"    # Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;

    .line 33
    invoke-interface {p1}, Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;->getPriority()I

    move-result v0

    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;

    check-cast p2, Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl$1;->compare(Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;)I

    move-result p1

    return p1
.end method
