.class public final enum Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;
.super Ljava/lang/Enum;
.source "StartTiming.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WHEN_BACKGROUND:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

.field public static final enum WHEN_IDLE:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

.field public static final enum WHEN_START:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

.field public static final enum WHEN_SYNC:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

.field public static final enum WHEN_UNKNOW:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

.field public static final enum WHEN_USER:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

.field private static final synthetic b:[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 7
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    const-string v1, "WHEN_UNKNOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_UNKNOW:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    .line 8
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    const-string v3, "WHEN_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_START:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    .line 9
    new-instance v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    const-string v5, "WHEN_BACKGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_BACKGROUND:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    .line 10
    new-instance v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    const-string v7, "WHEN_USER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_USER:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    .line 11
    new-instance v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    const-string v9, "WHEN_SYNC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_SYNC:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    .line 12
    new-instance v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    const-string v11, "WHEN_IDLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_IDLE:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    .line 6
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->b:[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->a:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;
    .locals 1

    .line 6
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->b:[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->a:I

    return v0
.end method
