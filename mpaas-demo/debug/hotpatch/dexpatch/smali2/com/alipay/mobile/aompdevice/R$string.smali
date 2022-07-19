.class public final Lcom/alipay/mobile/aompdevice/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aompdevice/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final h5_add_contact_create:I

.field public static final h5_add_contact_update:I

.field public static final h5_add_contact_wechat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string/jumbo v0, "string"

    const-string v1, "h5_add_contact_create"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/aompdevice/R$string;->h5_add_contact_create:I

    .line 12
    const-string v1, "h5_add_contact_update"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/aompdevice/R$string;->h5_add_contact_update:I

    .line 13
    const-string v1, "h5_add_contact_wechat"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/aompdevice/R$string;->h5_add_contact_wechat:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
