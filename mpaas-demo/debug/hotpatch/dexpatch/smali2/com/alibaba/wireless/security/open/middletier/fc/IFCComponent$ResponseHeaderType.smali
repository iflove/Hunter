.class public final enum Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseHeaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum KVL:Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

.field public static final enum KVO:Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

.field private static final synthetic a:[Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

    const-string v1, "KVO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;->KVO:Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

    new-instance v1, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

    const-string v3, "KVL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;->KVL:Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;->a:[Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;
    .locals 1

    const-class v0, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;
    .locals 1

    sget-object v0, Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;->a:[Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

    invoke-virtual {v0}, [Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wireless/security/open/middletier/fc/IFCComponent$ResponseHeaderType;

    return-object v0
.end method
