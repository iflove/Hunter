.class public Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl;
.super Ljava/lang/Object;
.source "H5OpenAuthProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;)V
    .locals 14
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "bundleAppId"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "scopeNicks"    # Ljava/util/List;
    .param p6, "isvAppId"    # Ljava/lang/String;
    .param p7, "extInfoMap"    # Ljava/util/Map;
    .param p8, "showErrorTip"    # Z
    .param p9, "listener"    # Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;",
            ")V"
        }
    .end annotation

    .line 43
    move-object v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v12, p3

    move-object/from16 v1, p9

    goto :goto_0

    .line 47
    :cond_0
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    move-object/from16 v1, p9

    invoke-direct {v2, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;)V

    .line 49
    .local v2, "helper":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;
    invoke-static/range {p7 .. p7}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->mapToMapStringString(Ljava/util/Map;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    move-result-object v10

    .line 50
    .local v10, "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 51
    .local v4, "appExtInfoMap":Ljava/util/Map;
    move-object v11, v3

    .end local v4    # "appExtInfoMap":Ljava/util/Map;
    .local v11, "appExtInfoMap":Ljava/util/Map;
    const-string v4, "channel"

    const-string v5, "ar"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "clientAppId"

    move-object/from16 v12, p3

    invoke-interface {v11, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->mapToMapStringString(Ljava/util/Map;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    move-result-object v13

    .line 54
    .local v13, "appExtInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    move/from16 v8, p8

    move-object v9, v13

    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->getAuthContentOrAutoAuth(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;ZLcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V

    .line 55
    return-void

    .line 43
    .end local v2    # "helper":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;
    .end local v10    # "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .end local v11    # "appExtInfoMap":Ljava/util/Map;
    .end local v13    # "appExtInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    :cond_1
    move-object/from16 v12, p3

    move-object/from16 v1, p9

    .line 44
    :goto_0
    return-void
.end method

.method public getAuthCodeLocal(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;)V
    .locals 22
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "authText"    # Ljava/util/List;
    .param p4, "protocol"    # Ljava/util/List;
    .param p5, "protocolLink"    # Ljava/util/List;
    .param p6, "listener"    # Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;",
            ")V"
        }
    .end annotation

    .line 61
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 63
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 64
    :cond_1
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v5, v0

    .line 65
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v4

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v4, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    if-eqz v3, :cond_3

    .line 67
    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;->onResult(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 70
    .end local v5    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    move-object v5, v0

    :cond_3
    :goto_0
    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_9

    .line 71
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;

    invoke-direct {v4, v2}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v5, "h5OpenAuthDialog":Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;
    move-object v5, v4

    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl$1;

    invoke-direct {v6, v1, v5, v3}, Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl;Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;)V

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl$2;

    invoke-direct {v4, v1, v5, v3}, Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl;Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;)V

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->getAuthContentTitle()Landroid/widget/TextView;

    move-result-object v4

    .line 98
    .local v4, "authTitle":Landroid/widget/TextView;
    move-object v6, v0

    .line 99
    .local v6, "titleTemplate":Ljava/lang/String;
    const-string/jumbo v7, "\u6388\u6743 <b>appName</b> \u83b7\u53d6\u4ee5\u4e0b\u4fe1\u606f\u4e3a\u4f60\u670d\u52a1"

    const-string v8, "appName"

    move-object/from16 v9, p2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->getAuthContentContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 104
    .local v7, "authContentContainer":Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v8, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 107
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v0

    move-object v14, v13

    move-object v15, v14

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "item":Ljava/lang/String;
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v13, "itemContainer":Landroid/widget/LinearLayout;
    move-object v13, v11

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    .local v14, "dot":Landroid/widget/TextView;
    move-object v14, v11

    const-string/jumbo v10, "\u2022 "

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/high16 v10, 0x41700000    # 15.0f

    const/4 v11, 0x1

    invoke-virtual {v14, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    const v11, -0x666667

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v15, "itemView":Landroid/widget/TextView;
    move-object v15, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/high16 v10, 0x41700000    # 15.0f

    const/4 v11, 0x1

    invoke-virtual {v15, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    const v10, -0x666667

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    const/4 v10, 0x0

    invoke-virtual {v15, v10, v11, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 120
    const/high16 v10, 0x40e00000    # 7.0f

    invoke-static {v2, v10}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v15, v10, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 121
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    .end local v0    # "item":Ljava/lang/String;
    .end local v13    # "itemContainer":Landroid/widget/LinearLayout;
    .end local v14    # "dot":Landroid/widget/TextView;
    .end local v15    # "itemView":Landroid/widget/TextView;
    const/4 v10, 0x0

    goto :goto_1

    .line 107
    :cond_4
    move-object v10, v0

    move-object v0, v12

    goto :goto_2

    .line 131
    :cond_5
    move-object v10, v0

    :goto_2
    if-eqz p4, :cond_8

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 132
    new-instance v11, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;

    invoke-direct {v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;-><init>()V

    .line 133
    .local v0, "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    move-object v0, v11

    new-instance v12, Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl$3;

    invoke-direct {v12, v1}, Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/H5OpenAuthProviderImpl;)V

    invoke-virtual {v11, v12}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;->setOnLinkClickListener(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod$OnLinkClickListener;)V

    .line 158
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->getAuthContentProtocol()Landroid/widget/TextView;

    move-result-object v11

    .line 159
    .local v10, "authProtocol":Landroid/widget/TextView;
    move-object v10, v11

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 161
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v11, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v12, "\u300atagname\u300b"

    .line 163
    .local v12, "protocolTemplate":Ljava/lang/String;
    const-string/jumbo v13, "\u540c\u610f"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    .line 166
    .local v14, "size":I
    move v14, v13

    new-array v13, v13, [I

    .line 167
    .local v13, "segmentStart":[I
    new-array v15, v14, [I

    .line 168
    .local v15, "segmentEnd":[I
    const/16 v17, 0x0

    .line 169
    .local v17, "index":I
    const/16 v18, 0x2

    .line 170
    .local v18, "cursor":I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v0

    .end local v0    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .local v21, "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "name":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v18, v18, 0x1

    .line 173
    aput v18, v13, v17

    .line 174
    const-string/jumbo v1, "tagname"

    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int v1, v18, v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v18, v1, 0x1

    .line 176
    aput v18, v15, v17

    .line 177
    nop

    .end local v0    # "name":Ljava/lang/String;
    add-int/lit8 v17, v17, 0x1

    .line 178
    move-object/from16 v1, p0

    move-object/from16 v0, v21

    goto :goto_3

    .line 179
    .end local v21    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .local v0, "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    :cond_6
    move-object/from16 v21, v0

    .end local v0    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .restart local v21    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 180
    .local v0, "protocolStr":Landroid/text/SpannableString;
    const/4 v1, 0x0

    .line 181
    .end local v17    # "index":I
    .local v1, "index":I
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, "link":Ljava/lang/String;
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthClickableSpan;

    invoke-direct {v3, v2}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthClickableSpan;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v2

    .end local v2    # "link":Ljava/lang/String;
    .local v17, "link":Ljava/lang/String;
    aget v2, v13, v1

    move-object/from16 v19, v4

    .end local v4    # "authTitle":Landroid/widget/TextView;
    .local v19, "authTitle":Landroid/widget/TextView;
    aget v4, v15, v1

    move-object/from16 v20, v6

    .end local v6    # "titleTemplate":Ljava/lang/String;
    .local v20, "titleTemplate":Ljava/lang/String;
    const/16 v6, 0x22

    invoke-virtual {v0, v3, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    nop

    .end local v17    # "link":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 187
    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    goto :goto_4

    .line 188
    .end local v19    # "authTitle":Landroid/widget/TextView;
    .end local v20    # "titleTemplate":Ljava/lang/String;
    .restart local v4    # "authTitle":Landroid/widget/TextView;
    .restart local v6    # "titleTemplate":Ljava/lang/String;
    :cond_7
    move-object/from16 v19, v4

    move-object/from16 v20, v6

    .end local v4    # "authTitle":Landroid/widget/TextView;
    .end local v6    # "titleTemplate":Ljava/lang/String;
    .restart local v19    # "authTitle":Landroid/widget/TextView;
    .restart local v20    # "titleTemplate":Ljava/lang/String;
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 131
    .end local v0    # "protocolStr":Landroid/text/SpannableString;
    .end local v1    # "index":I
    .end local v10    # "authProtocol":Landroid/widget/TextView;
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "protocolTemplate":Ljava/lang/String;
    .end local v13    # "segmentStart":[I
    .end local v14    # "size":I
    .end local v15    # "segmentEnd":[I
    .end local v18    # "cursor":I
    .end local v19    # "authTitle":Landroid/widget/TextView;
    .end local v20    # "titleTemplate":Ljava/lang/String;
    .end local v21    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .restart local v4    # "authTitle":Landroid/widget/TextView;
    .restart local v6    # "titleTemplate":Ljava/lang/String;
    :cond_8
    move-object/from16 v19, v4

    move-object/from16 v20, v6

    .line 192
    .end local v4    # "authTitle":Landroid/widget/TextView;
    .end local v6    # "titleTemplate":Ljava/lang/String;
    .restart local v19    # "authTitle":Landroid/widget/TextView;
    .restart local v20    # "titleTemplate":Ljava/lang/String;
    :goto_5
    :try_start_0
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 194
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5OpenAuthProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 70
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v5    # "h5OpenAuthDialog":Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;
    .end local v7    # "authContentContainer":Landroid/widget/LinearLayout;
    .end local v8    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "authTitle":Landroid/widget/TextView;
    .end local v20    # "titleTemplate":Ljava/lang/String;
    :cond_9
    move-object/from16 v9, p2

    .line 198
    :goto_6
    return-void
.end method
