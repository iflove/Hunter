.class public Lcom/mpaas/mpaasadapter/api/MPLbs;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doRequestLocationUpdates(Landroid/content/Context;ZLcom/alipay/mobile/common/lbs/LBSLocationListener;JJZLjava/lang/String;ZLjava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gpsEnable"    # Z
    .param p2, "locationListener"    # Lcom/alipay/mobile/common/lbs/LBSLocationListener;
    .param p3, "miniInterval"    # J
    .param p5, "overtime"    # J
    .param p7, "isNeedAddress"    # Z
    .param p8, "bizType"    # Ljava/lang/String;
    .param p9, "needSpeed"    # Z
    .param p10, "isH5"    # Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->doRequestLocationUpdates(Landroid/content/Context;ZLcom/alipay/mobile/common/lbs/LBSLocationListener;JJZLjava/lang/String;ZLjava/lang/String;)V

    .line 15
    return-void
.end method
