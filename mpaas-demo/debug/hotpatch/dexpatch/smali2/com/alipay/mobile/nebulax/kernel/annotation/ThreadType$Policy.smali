.class public final enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
.super Ljava/lang/Enum;
.source "ThreadType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

.field public static final enum IDLE:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

.field public static final enum IO:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

.field public static final enum NORMAL:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

.field public static final enum RPC:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

.field public static final enum SYNC:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

.field public static final enum UI:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

.field public static final enum URGENT:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

.field public static final enum URGENT_DISPLAY:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    const-string v1, "SYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->SYNC:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 20
    new-instance v1, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    const-string v3, "UI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->UI:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 23
    new-instance v3, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    const-string v5, "URGENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->URGENT:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 26
    new-instance v5, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    const-string v7, "URGENT_DISPLAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->URGENT_DISPLAY:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 29
    new-instance v7, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    const-string v9, "RPC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->RPC:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 32
    new-instance v9, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    const-string v11, "IO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->IO:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 35
    new-instance v11, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    const-string v13, "NORMAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->NORMAL:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 38
    new-instance v13, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    const-string v15, "IDLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->IDLE:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 14
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->$VALUES:[Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .locals 1

    .line 14
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .locals 1

    .line 14
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->$VALUES:[Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    return-object v0
.end method
