.class public final enum Lcom/mpaas/mobile/metainfo/NebulaExtensionType;
.super Ljava/lang/Enum;
.source "NebulaExtensionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mpaas/mobile/metainfo/NebulaExtensionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

.field public static final enum BRIDGE:Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

.field public static final enum NORMAL:Lcom/mpaas/mobile/metainfo/NebulaExtensionType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;->NORMAL:Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    .line 5
    new-instance v1, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    const-string v3, "BRIDGE"

    const/4 v4, 0x1

    const-string v5, "bridge"

    invoke-direct {v1, v3, v4, v5}, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;->BRIDGE:Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    .line 3
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;->$VALUES:[Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;->value:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mpaas/mobile/metainfo/NebulaExtensionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    return-object v0
.end method

.method public static values()[Lcom/mpaas/mobile/metainfo/NebulaExtensionType;
    .locals 1

    .line 3
    sget-object v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;->$VALUES:[Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    invoke-virtual {v0}, [Lcom/mpaas/mobile/metainfo/NebulaExtensionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mpaas/mobile/metainfo/NebulaExtensionType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mpaas/mobile/metainfo/NebulaExtensionType;->value:Ljava/lang/String;

    return-object v0
.end method
