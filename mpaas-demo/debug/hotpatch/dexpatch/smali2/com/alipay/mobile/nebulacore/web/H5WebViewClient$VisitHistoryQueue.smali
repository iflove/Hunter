.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;
.super Ljava/util/LinkedList;
.source "H5WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisitHistoryQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2005
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 2002
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->a:I

    .line 2006
    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->a:I

    .line 2007
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2011
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 2012
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->a:I

    if-le v1, v2, :cond_0

    .line 2013
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$VisitHistoryQueue;->removeFirst()Ljava/lang/Object;

    .line 2015
    :cond_0
    return v0
.end method
