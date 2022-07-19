.class public final enum Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;
.super Ljava/lang/Enum;
.source "NetworkServiceTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRACE_ITEM_INDEX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TRACE_ITEM_DJG:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

.field public static final enum TRACE_ITEM_H5:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

.field public static final enum TRACE_ITEM_NBNET_UP:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

.field public static final enum TRACE_ITEM_RPC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

.field public static final enum TRACE_ITEM_RSRC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

.field private static final synthetic a:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 54
    new-instance v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    const-string v1, "TRACE_ITEM_RPC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_RPC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    .line 55
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    const-string v3, "TRACE_ITEM_H5"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_H5:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    .line 56
    new-instance v3, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    const-string v5, "TRACE_ITEM_RSRC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_RSRC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    .line 57
    new-instance v5, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    const-string v7, "TRACE_ITEM_DJG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_DJG:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    .line 58
    new-instance v7, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    const-string v9, "TRACE_ITEM_NBNET_UP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_NBNET_UP:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    .line 53
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->a:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;
    .locals 1

    .line 53
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->a:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    return-object v0
.end method
