.class public final enum Lcom/mpaas/mobile/metainfo/NebulaPluginScope;
.super Ljava/lang/Enum;
.source "NebulaPluginScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mpaas/mobile/metainfo/NebulaPluginScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

.field public static final enum EMPTY:Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

.field public static final enum PAGE:Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

.field public static final enum SERVICE:Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

.field public static final enum SESSION:Lcom/mpaas/mobile/metainfo/NebulaPluginScope;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    const-string v1, "SERVICE"

    const/4 v2, 0x0

    const-string v3, "service"

    invoke-direct {v0, v1, v2, v3}, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->SERVICE:Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    .line 5
    new-instance v1, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    const-string v3, "SESSION"

    const/4 v4, 0x1

    const-string v5, "session"

    invoke-direct {v1, v3, v4, v5}, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->SESSION:Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    .line 6
    new-instance v3, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    const-string v5, "PAGE"

    const/4 v6, 0x2

    const-string v7, "page"

    invoke-direct {v3, v5, v6, v7}, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->PAGE:Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    .line 7
    new-instance v5, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    const-string v7, "EMPTY"

    const/4 v8, 0x3

    const-string v9, ""

    invoke-direct {v5, v7, v8, v9}, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->EMPTY:Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    .line 3
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->$VALUES:[Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->value:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mpaas/mobile/metainfo/NebulaPluginScope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    return-object v0
.end method

.method public static values()[Lcom/mpaas/mobile/metainfo/NebulaPluginScope;
    .locals 1

    .line 3
    sget-object v0, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->$VALUES:[Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    invoke-virtual {v0}, [Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mpaas/mobile/metainfo/NebulaPluginScope;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mpaas/mobile/metainfo/NebulaPluginScope;->value:Ljava/lang/String;

    return-object v0
.end method
