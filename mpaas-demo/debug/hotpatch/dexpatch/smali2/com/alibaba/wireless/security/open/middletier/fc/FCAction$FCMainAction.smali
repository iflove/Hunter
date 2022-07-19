.class public final enum Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wireless/security/open/middletier/fc/FCAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FCMainAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

.field public static final enum FAIL:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

.field public static final enum RETRY:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

.field public static final enum SUCCESS:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

.field public static final enum TIMEOUT:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

.field private static final synthetic a:[Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;->SUCCESS:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    new-instance v1, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    const-string v3, "FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;->FAIL:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    new-instance v3, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    const-string v5, "CANCEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;->CANCEL:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    new-instance v5, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    const-string v7, "RETRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;->RETRY:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    new-instance v7, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    const-string v9, "TIMEOUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;->TIMEOUT:Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;->a:[Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;
    .locals 1

    const-class v0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;
    .locals 1

    sget-object v0, Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;->a:[Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    invoke-virtual {v0}, [Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wireless/security/open/middletier/fc/FCAction$FCMainAction;

    return-object v0
.end method
