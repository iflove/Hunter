.class public final enum Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;
.super Ljava/lang/Enum;
.source "H5EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IO:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

.field public static final enum SYNC:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

.field public static final enum UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

.field private static final synthetic a:[Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 299
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    const-string v1, "SYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->SYNC:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    .line 301
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    const-string v3, "UI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    .line 303
    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    const-string v5, "IO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->IO:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    .line 297
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->a:[Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 297
    const-class v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;
    .locals 1

    .line 297
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->a:[Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    return-object v0
.end method
