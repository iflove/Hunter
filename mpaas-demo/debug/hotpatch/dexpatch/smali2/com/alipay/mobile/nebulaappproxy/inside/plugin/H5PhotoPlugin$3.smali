.class Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;
.super Ljava/lang/Object;
.source "H5PhotoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->processImgUrl(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$originalPath:Ljava/lang/String;

.field final synthetic val$scene:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    .line 207
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$scene:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$originalPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 44

    move-object/from16 v1, p0

    const-string v2, "file://"

    .line 210
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 212
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    const-string v5, "dataType"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 213
    .local v17, "dataType":Ljava/lang/String;
    const-string/jumbo v0, "upload"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v18

    .line 215
    .local v18, "upload":Z
    const-string v0, "imageFormat"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "imageFormat":Ljava/lang/String;
    const-string v6, "jpg"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v8, "png"

    if-nez v7, :cond_0

    .line 217
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 218
    const-string v0, "jpg"

    move-object v15, v0

    goto :goto_0

    .line 220
    :cond_0
    move-object v15, v0

    .end local v0    # "imageFormat":Ljava/lang/String;
    .local v15, "imageFormat":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "quality"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "quality":I
    const-string/jumbo v7, "maxWidth"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v14

    .line 222
    .local v14, "maxWidth":I
    const-string/jumbo v7, "maxHeight"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v13

    .line 224
    .local v13, "maxHeight":I
    const/4 v7, 0x0

    .line 225
    .local v7, "needSave":Z
    if-gtz v14, :cond_1

    if-lez v13, :cond_2

    .line 226
    :cond_1
    const/4 v7, 0x1

    .line 229
    :cond_2
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x64

    if-eq v0, v9, :cond_3

    .line 230
    const/4 v7, 0x1

    move v12, v0

    move/from16 v19, v7

    goto :goto_1

    .line 232
    :cond_3
    const/16 v0, 0x64

    move v12, v0

    move/from16 v19, v7

    .line 235
    .end local v0    # "quality":I
    .end local v7    # "needSave":Z
    .local v12, "quality":I
    .local v19, "needSave":Z
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "maxWidth "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " maxHeight "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " quality "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "H5PhotoPlugin"

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;

    .line 240
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/TinyUtils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;

    move-object v7, v3

    .line 241
    .local v7, "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    move-object v10, v0

    .end local v7    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .local v10, "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    if-eqz v0, :cond_d

    .line 243
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "imageUrl "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "destPath":Ljava/lang/String;
    const-string/jumbo v7, "orientation"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v7

    move/from16 v20, v7

    .line 247
    .local v20, "orientation":I
    const/4 v7, 0x0

    .line 248
    .local v7, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 250
    .local v9, "resultByte":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 252
    .local v21, "beginCropTime":J
    new-instance v5, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;

    invoke-direct {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;-><init>()V

    move-object/from16 v23, v3

    .line 253
    .local v23, "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    move-object/from16 v24, v5

    .end local v23    # "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    .local v24, "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    new-instance v3, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions$MaxLenMode;

    .line 254
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v25

    move-object/from16 v26, v0

    .end local v0    # "destPath":Ljava/lang/String;
    .local v26, "destPath":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions$MaxLenMode;-><init>(Ljava/lang/Integer;)V

    iput-object v3, v5, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;->mode:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions$Mode;

    .line 255
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$imageUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    move-object/from16 v3, v24

    .end local v24    # "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    .local v3, "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    invoke-virtual {v10, v0, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;->decodeBitmap(Ljava/io/File;Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v5, 0x0

    move-object/from16 v24, v5

    .line 257
    .local v24, "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    move-object v5, v0

    .end local v24    # "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    .local v5, "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    if-eqz v0, :cond_4

    .line 258
    :try_start_1
    iget-object v0, v5, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;->bitmap:Landroid/graphics/Bitmap;

    move-object v7, v0

    goto :goto_2

    .line 359
    .end local v3    # "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    .end local v5    # "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    .end local v7    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "resultByte":[B
    .end local v20    # "orientation":I
    .end local v21    # "beginCropTime":J
    .end local v26    # "destPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v40, v10

    move-object v1, v11

    move/from16 v32, v12

    move/from16 v30, v13

    move/from16 v42, v14

    move-object/from16 v43, v15

    goto/16 :goto_c

    .line 261
    .restart local v3    # "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    .restart local v5    # "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    .restart local v7    # "resultBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "resultByte":[B
    .restart local v20    # "orientation":I
    .restart local v21    # "beginCropTime":J
    .restart local v26    # "destPath":Ljava/lang/String;
    :cond_4
    :goto_2
    if-nez v7, :cond_5

    .line 263
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v0

    .line 266
    :cond_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v21

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v24, v0

    .line 267
    .local v24, "cropCost":Ljava/lang/Long;
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v25, v3

    .end local v3    # "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    .local v25, "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    const-string v3, "cropBitmap cost "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v24

    .end local v24    # "cropCost":Ljava/lang/Long;
    .local v3, "cropCost":Ljava/lang/Long;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 271
    .local v27, "beginQuality":J
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    invoke-virtual {v0, v7, v12}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->imageQuality(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v29, v29, v27

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v24, v0

    .line 273
    .local v24, "qualityCost":Ljava/lang/Long;
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v29, v3

    .end local v3    # "cropCost":Ljava/lang/Long;
    .local v29, "cropCost":Ljava/lang/Long;
    const-string v3, "imageQuality cost "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v24

    .end local v24    # "qualityCost":Ljava/lang/Long;
    .local v3, "qualityCost":Ljava/lang/Long;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v24, v0

    .line 276
    .local v24, "apEncodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;
    if-eqz v20, :cond_6

    .line 277
    :try_start_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v31, v3

    move-object/from16 v3, v24

    .end local v24    # "apEncodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;
    .local v3, "apEncodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;
    .local v31, "qualityCost":Ljava/lang/Long;
    iput-object v0, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;->forceRotate:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v0, 0x1

    goto :goto_3

    .line 279
    .end local v31    # "qualityCost":Ljava/lang/Long;
    .local v3, "qualityCost":Ljava/lang/Long;
    .restart local v24    # "apEncodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;
    :cond_6
    move-object/from16 v31, v3

    move-object/from16 v3, v24

    .end local v24    # "apEncodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;
    .local v3, "apEncodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;
    .restart local v31    # "qualityCost":Ljava/lang/Long;
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;->autoRotate:Z

    .line 281
    :goto_3
    move-object/from16 v24, v5

    const/4 v5, 0x0

    .end local v5    # "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    .local v24, "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    iput v5, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;->outFormat:I

    .line 282
    iput-boolean v0, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;->requireOutputInfo:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 284
    if-eqz v19, :cond_7

    :try_start_5
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 286
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/TinyUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, v5

    .line 287
    .local v6, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->getImageTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "destDirName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v32, v12

    move/from16 v30, v13

    .end local v12    # "quality":I
    .end local v13    # "maxHeight":I
    .local v30, "maxHeight":I
    .local v32, "quality":I
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ".jpg"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 290
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;->outputFile:Ljava/lang/String;

    .line 291
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 292
    .end local v26    # "destPath":Ljava/lang/String;
    .local v12, "destPath":Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v26, v12

    goto :goto_4

    .line 359
    .end local v0    # "destDirName":Ljava/lang/String;
    .end local v3    # "apEncodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "resultByte":[B
    .end local v12    # "destPath":Ljava/lang/String;
    .end local v20    # "orientation":I
    .end local v21    # "beginCropTime":J
    .end local v24    # "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    .end local v25    # "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    .end local v27    # "beginQuality":J
    .end local v29    # "cropCost":Ljava/lang/Long;
    .end local v31    # "qualityCost":Ljava/lang/Long;
    :catch_1
    move-exception v0

    move-object/from16 v40, v10

    move-object v1, v11

    move/from16 v42, v14

    move-object/from16 v43, v15

    goto/16 :goto_c

    .end local v30    # "maxHeight":I
    .end local v32    # "quality":I
    .local v12, "quality":I
    .restart local v13    # "maxHeight":I
    :catch_2
    move-exception v0

    move-object/from16 v40, v10

    move-object v1, v11

    move/from16 v32, v12

    move/from16 v30, v13

    move/from16 v42, v14

    move-object/from16 v43, v15

    .end local v12    # "quality":I
    .end local v13    # "maxHeight":I
    .restart local v30    # "maxHeight":I
    .restart local v32    # "quality":I
    goto/16 :goto_c

    .line 284
    .end local v30    # "maxHeight":I
    .end local v32    # "quality":I
    .restart local v3    # "apEncodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;
    .restart local v7    # "resultBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "resultByte":[B
    .restart local v12    # "quality":I
    .restart local v13    # "maxHeight":I
    .restart local v20    # "orientation":I
    .restart local v21    # "beginCropTime":J
    .restart local v24    # "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    .restart local v25    # "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    .restart local v26    # "destPath":Ljava/lang/String;
    .restart local v27    # "beginQuality":J
    .restart local v29    # "cropCost":Ljava/lang/Long;
    .restart local v31    # "qualityCost":Ljava/lang/Long;
    :cond_7
    move/from16 v32, v12

    move/from16 v30, v13

    .line 295
    .end local v12    # "quality":I
    .end local v13    # "maxHeight":I
    .restart local v30    # "maxHeight":I
    .restart local v32    # "quality":I
    :goto_4
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide/from16 v33, v5

    .line 296
    .local v33, "compress":J
    nop

    .line 297
    invoke-virtual {v10, v7, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;->compress(Landroid/graphics/Bitmap;Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeResult;

    move-result-object v0

    move-object v13, v0

    .line 298
    .local v13, "apEncodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeResult;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v33

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v12, v0

    .line 299
    .local v12, "compressCost":Ljava/lang/Long;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "after compress "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "width":I
    const/4 v5, 0x0

    .line 303
    .local v5, "height":I
    if-eqz v13, :cond_9

    .line 304
    :try_start_8
    iget-object v6, v13, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeResult;->encodeData:[B

    move-object v9, v6

    .line 305
    iget-object v6, v13, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeResult;->imageInfo:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/APImageInfo;

    if-eqz v6, :cond_8

    .line 306
    iget-object v6, v13, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeResult;->imageInfo:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/APImageInfo;

    iget v6, v6, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/APImageInfo;->width:I

    move v0, v6

    .line 307
    iget-object v6, v13, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeResult;->imageInfo:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/APImageInfo;

    iget v6, v6, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/APImageInfo;->height:I

    move v5, v6

    move/from16 v35, v0

    move/from16 v36, v5

    goto :goto_5

    .line 305
    :cond_8
    move/from16 v35, v0

    move/from16 v36, v5

    goto :goto_5

    .line 303
    :cond_9
    move/from16 v35, v0

    move/from16 v36, v5

    .line 312
    .end local v0    # "width":I
    .end local v5    # "height":I
    .local v35, "width":I
    .local v36, "height":I
    :goto_5
    if-eqz v19, :cond_a

    invoke-static {v15, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v9, :cond_a

    .line 314
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/TinyUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x0

    .line 315
    .local v5, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->getImageTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 316
    .local v6, "destDirName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    .end local v7    # "resultBitmap":Landroid/graphics/Bitmap;
    .local v23, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 317
    .local v7, "fileName":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 318
    const/4 v8, 0x0

    .line 320
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v37, v5

    .end local v5    # "context":Landroid/content/Context;
    .local v37, "context":Landroid/content/Context;
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 321
    move-object v8, v0

    invoke-virtual {v0, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 325
    :try_start_b
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_7

    .line 322
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v37    # "context":Landroid/content/Context;
    .restart local v5    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v0

    move-object/from16 v37, v5

    .line 323
    .end local v5    # "context":Landroid/content/Context;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v37    # "context":Landroid/content/Context;
    :goto_6
    :try_start_c
    const-string/jumbo v5, "write file error"

    invoke-static {v11, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 325
    .end local v0    # "t":Ljava/lang/Throwable;
    :try_start_d
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 326
    :goto_7
    nop

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_8

    .line 325
    :catchall_2
    move-exception v0

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .end local v14    # "maxWidth":I
    .end local v15    # "imageFormat":Ljava/lang/String;
    .end local v17    # "dataType":Ljava/lang/String;
    .end local v18    # "upload":Z
    .end local v19    # "needSave":Z
    .end local v30    # "maxHeight":I
    .end local v32    # "quality":I
    throw v0

    .line 312
    .end local v6    # "destDirName":Ljava/lang/String;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v23    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v37    # "context":Landroid/content/Context;
    .restart local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .local v7, "resultBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .restart local v14    # "maxWidth":I
    .restart local v15    # "imageFormat":Ljava/lang/String;
    .restart local v17    # "dataType":Ljava/lang/String;
    .restart local v18    # "upload":Z
    .restart local v19    # "needSave":Z
    .restart local v30    # "maxHeight":I
    .restart local v32    # "quality":I
    :cond_a
    move-object/from16 v23, v7

    .line 331
    .end local v7    # "resultBitmap":Landroid/graphics/Bitmap;
    .restart local v23    # "resultBitmap":Landroid/graphics/Bitmap;
    :goto_8
    if-nez v9, :cond_c

    iget-object v0, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;->outputFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    if-nez v0, :cond_c

    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 335
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 336
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v6, v3, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;->outputFile:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 337
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 339
    .local v0, "buffer":[B
    :goto_9
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    .line 340
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 342
    :cond_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object v9, v6

    .line 346
    .end local v0    # "buffer":[B
    .end local v7    # "read":I
    :try_start_f
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 347
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 348
    move-object v0, v9

    goto :goto_b

    .line 343
    :catchall_3
    move-exception v0

    .line 344
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_10
    const-string/jumbo v6, "read bytes error"

    invoke-static {v11, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 346
    .end local v0    # "t":Ljava/lang/Throwable;
    :try_start_11
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 347
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 348
    goto :goto_a

    .line 346
    :catchall_4
    move-exception v0

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 347
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .end local v14    # "maxWidth":I
    .end local v15    # "imageFormat":Ljava/lang/String;
    .end local v17    # "dataType":Ljava/lang/String;
    .end local v18    # "upload":Z
    .end local v19    # "needSave":Z
    .end local v30    # "maxHeight":I
    .end local v32    # "quality":I
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 351
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .restart local v14    # "maxWidth":I
    .restart local v15    # "imageFormat":Ljava/lang/String;
    .restart local v17    # "dataType":Ljava/lang/String;
    .restart local v18    # "upload":Z
    .restart local v19    # "needSave":Z
    .restart local v30    # "maxHeight":I
    .restart local v32    # "quality":I
    :cond_c
    :goto_a
    move-object v0, v9

    .end local v9    # "resultByte":[B
    .local v0, "resultByte":[B
    :goto_b
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide/from16 v37, v5

    .line 352
    .local v37, "base64":J
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 353
    .local v9, "data":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v37

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 354
    .local v2, "base64Coast":Ljava/lang/Long;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "base64 cost:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;

    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v8, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$scene:Ljava/lang/String;

    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin$3;->val$originalPath:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    move-object/from16 v16, v7

    move-object v7, v4

    move-object/from16 v39, v8

    move/from16 v8, v18

    move-object/from16 v40, v10

    .end local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .local v40, "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    move-object/from16 v10, v17

    move-object v1, v11

    move-object/from16 v11, v26

    move-object/from16 v41, v12

    .end local v12    # "compressCost":Ljava/lang/Long;
    .local v41, "compressCost":Ljava/lang/Long;
    move-object/from16 v12, v39

    move-object/from16 v39, v13

    .end local v13    # "apEncodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeResult;
    .local v39, "apEncodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeResult;
    move-object/from16 v13, v16

    move/from16 v42, v14

    .end local v14    # "maxWidth":I
    .local v42, "maxWidth":I
    move-object v14, v0

    move-object/from16 v43, v15

    .end local v15    # "imageFormat":Ljava/lang/String;
    .local v43, "imageFormat":Ljava/lang/String;
    move/from16 v15, v35

    move/from16 v16, v36

    :try_start_13
    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->uploadRpc(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)V
    invoke-static/range {v5 .. v16}, Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;->access$200(Lcom/alipay/mobile/nebulaappproxy/inside/plugin/H5PhotoPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 361
    .end local v0    # "resultByte":[B
    .end local v2    # "base64Coast":Ljava/lang/Long;
    .end local v3    # "apEncodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeOptions;
    .end local v9    # "data":Ljava/lang/String;
    .end local v20    # "orientation":I
    .end local v21    # "beginCropTime":J
    .end local v23    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "apDecodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeResult;
    .end local v25    # "apDecodeOptions":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/decode/APDecodeOptions;
    .end local v26    # "destPath":Ljava/lang/String;
    .end local v27    # "beginQuality":J
    .end local v29    # "cropCost":Ljava/lang/Long;
    .end local v31    # "qualityCost":Ljava/lang/Long;
    .end local v33    # "compress":J
    .end local v35    # "width":I
    .end local v36    # "height":I
    .end local v37    # "base64":J
    .end local v39    # "apEncodeResult":Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/image/processor/encode/APEncodeResult;
    .end local v41    # "compressCost":Ljava/lang/Long;
    return-void

    .line 359
    :catch_3
    move-exception v0

    goto :goto_c

    .end local v40    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .end local v42    # "maxWidth":I
    .end local v43    # "imageFormat":Ljava/lang/String;
    .restart local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .restart local v14    # "maxWidth":I
    .restart local v15    # "imageFormat":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v40, v10

    move-object v1, v11

    move/from16 v42, v14

    move-object/from16 v43, v15

    .end local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .end local v14    # "maxWidth":I
    .end local v15    # "imageFormat":Ljava/lang/String;
    .restart local v40    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .restart local v42    # "maxWidth":I
    .restart local v43    # "imageFormat":Ljava/lang/String;
    goto :goto_c

    .end local v30    # "maxHeight":I
    .end local v32    # "quality":I
    .end local v40    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .end local v42    # "maxWidth":I
    .end local v43    # "imageFormat":Ljava/lang/String;
    .restart local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .local v12, "quality":I
    .local v13, "maxHeight":I
    .restart local v14    # "maxWidth":I
    .restart local v15    # "imageFormat":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v40, v10

    move-object v1, v11

    move/from16 v32, v12

    move/from16 v30, v13

    move/from16 v42, v14

    move-object/from16 v43, v15

    .line 360
    .end local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .end local v12    # "quality":I
    .end local v13    # "maxHeight":I
    .end local v14    # "maxWidth":I
    .end local v15    # "imageFormat":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v30    # "maxHeight":I
    .restart local v32    # "quality":I
    .restart local v40    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .restart local v42    # "maxWidth":I
    .restart local v43    # "imageFormat":Ljava/lang/String;
    :goto_c
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v30    # "maxHeight":I
    .end local v32    # "quality":I
    .end local v40    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .end local v42    # "maxWidth":I
    .end local v43    # "imageFormat":Ljava/lang/String;
    .restart local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .restart local v12    # "quality":I
    .restart local v13    # "maxHeight":I
    .restart local v14    # "maxWidth":I
    .restart local v15    # "imageFormat":Ljava/lang/String;
    :cond_d
    move-object/from16 v40, v10

    move/from16 v32, v12

    move/from16 v30, v13

    move/from16 v42, v14

    move-object/from16 v43, v15

    .line 364
    .end local v10    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .end local v12    # "quality":I
    .end local v13    # "maxHeight":I
    .end local v14    # "maxWidth":I
    .end local v15    # "imageFormat":Ljava/lang/String;
    .restart local v30    # "maxHeight":I
    .restart local v32    # "quality":I
    .restart local v40    # "multimediaImageProcessor":Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageProcessor;
    .restart local v42    # "maxWidth":I
    .restart local v43    # "imageFormat":Ljava/lang/String;
    :goto_d
    return-void
.end method
