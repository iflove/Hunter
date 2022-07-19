.class public final enum Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
.super Ljava/lang/Enum;
.source "JavaCrashInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JCIItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

.field public static final enum LINES:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

.field public static final enum THROWABLE:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 303
    new-instance v0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    const-string v1, "THROWABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->THROWABLE:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    new-instance v1, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    const-string v3, "LINES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->LINES:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    .line 302
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->$VALUES:[Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 302
    const-class v0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    .locals 1

    .line 302
    sget-object v0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->$VALUES:[Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    return-object v0
.end method
