.class public final enum Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;
.super Ljava/lang/Enum;
.source "NebulaXCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/NebulaXCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

.field public static final enum RECEIVE_SYNC:Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

.field public static final enum SAVE_PACK_JSON:Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

.field public static final enum UPDATE_PRIVATE_DATA_DIRECTORY_SUFFIX:Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    const-string v1, "SAVE_PACK_JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;->SAVE_PACK_JSON:Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    .line 15
    new-instance v1, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    const-string v3, "RECEIVE_SYNC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;->RECEIVE_SYNC:Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    .line 16
    new-instance v3, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    const-string v5, "UPDATE_PRIVATE_DATA_DIRECTORY_SUFFIX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;->UPDATE_PRIVATE_DATA_DIRECTORY_SUFFIX:Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    .line 13
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;->$VALUES:[Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;
    .locals 1

    .line 13
    sget-object v0, Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;->$VALUES:[Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;

    return-object v0
.end method
