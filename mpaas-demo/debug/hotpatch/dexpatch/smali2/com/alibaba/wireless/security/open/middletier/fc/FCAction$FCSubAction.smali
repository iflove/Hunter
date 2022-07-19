.class public final enum Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wireless/security/open/middletier/fc/FCAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FCSubAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DENY:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

.field public static final enum FL:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

.field public static final enum LOGIN:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

.field public static final enum NC:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

.field public static final enum WUA:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

.field private static final synthetic b:[Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    const-string v1, "WUA"

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->WUA:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    new-instance v1, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    const-string v3, "NC"

    const/4 v4, 0x1

    const-wide/16 v5, 0x2

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->NC:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    new-instance v3, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    const-string v5, "FL"

    const/4 v6, 0x2

    const-wide/16 v7, 0x4

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->FL:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    new-instance v5, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    const-string v7, "LOGIN"

    const/4 v8, 0x3

    const-wide/16 v9, 0x8

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->LOGIN:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    new-instance v7, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    const-string v9, "DENY"

    const/4 v10, 0x4

    const-wide/16 v11, 0x10

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->DENY:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->b:[Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->a:J

    iput-wide p3, p0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->a:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;
    .locals 1

    const-class v0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;
    .locals 1

    sget-object v0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->b:[Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    invoke-virtual {v0}, [Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCSubAction;->a:J

    return-wide v0
.end method
