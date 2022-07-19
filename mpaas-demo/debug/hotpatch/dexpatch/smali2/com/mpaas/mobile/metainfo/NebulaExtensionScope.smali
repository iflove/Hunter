.class public final enum Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;
.super Ljava/lang/Enum;
.source "NebulaExtensionScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

.field public static final enum APP:Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

.field public static final enum EMPTY:Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

.field public static final enum PAGE:Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    const-string v1, "APP"

    const/4 v2, 0x0

    const-string v3, "App"

    invoke-direct {v0, v1, v2, v3}, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;->APP:Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    .line 5
    new-instance v1, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    const-string v3, "EMPTY"

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v1, v3, v4, v5}, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;->EMPTY:Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    .line 6
    new-instance v3, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    const-string v5, "PAGE"

    const/4 v6, 0x2

    const-string v7, "Page"

    invoke-direct {v3, v5, v6, v7}, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;->PAGE:Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    .line 3
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;->$VALUES:[Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

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
    iput-object p3, p0, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;->value:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    return-object v0
.end method

.method public static values()[Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;
    .locals 1

    .line 3
    sget-object v0, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;->$VALUES:[Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    invoke-virtual {v0}, [Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mpaas/mobile/metainfo/NebulaExtensionScope;->value:Ljava/lang/String;

    return-object v0
.end method
