.class Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl$1;
.super Ljava/util/HashSet;
.source "H5EmbededViewProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 38
    const-string v0, "map"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl$1;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "input"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl$1;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
