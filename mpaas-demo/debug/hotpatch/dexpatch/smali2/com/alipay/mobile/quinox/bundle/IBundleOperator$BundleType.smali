.class public final enum Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
.super Ljava/lang/Enum;
.source "IBundleOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/bundle/IBundleOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BundleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

.field public static final enum ByteData:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

.field public static final enum ProtoBuf:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

.field public static final enum Unknown:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const-string v3, "bundles"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->Unknown:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    new-instance v1, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    const-string v3, "ByteData"

    const/4 v4, 0x1

    const-string v5, "bundles.cfg"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ByteData:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    new-instance v3, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    const-string v5, "ProtoBuf"

    const/4 v6, 0x2

    const-string v7, "bundles.pb"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ProtoBuf:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    .line 15
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->$VALUES:[Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
    .locals 1

    .line 15
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->$VALUES:[Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->name:Ljava/lang/String;

    return-object v0
.end method
