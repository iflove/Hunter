.class final synthetic Lcom/alipay/mobile/quinox/bundle/c$2;
.super Ljava/lang/Object;
.source "BundleOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/bundle/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    invoke-static {}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->values()[Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/c$2;->a:[I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ProtoBuf:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/c$2;->a:[I

    sget-object v1, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ByteData:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    return-void
.end method
