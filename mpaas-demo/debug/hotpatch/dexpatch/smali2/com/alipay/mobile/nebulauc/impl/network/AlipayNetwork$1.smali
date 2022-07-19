.class Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$1;
.super Ljava/lang/Object;
.source "AlipayNetwork.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    .line 185
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 188
    const-string v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableSendErrorToUcWhenException:Z

    .line 189
    return-void
.end method
