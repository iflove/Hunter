.class public final Lcom/alipay/mobile/aompfilemanager/jspai/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aompfilemanager/jspai/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final h5_upload_file:I

.field public static final invalidparam:I

.field public static final networkbusi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-string/jumbo v0, "string"

    const-string v1, "h5_upload_file"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/aompfilemanager/jspai/R$string;->h5_upload_file:I

    .line 22
    const-string v1, "invalidparam"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/aompfilemanager/jspai/R$string;->invalidparam:I

    .line 23
    const-string/jumbo v1, "networkbusi"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/aompfilemanager/jspai/R$string;->networkbusi:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
