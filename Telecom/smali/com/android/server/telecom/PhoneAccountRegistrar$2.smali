.class final Lcom/android/server/telecom/PhoneAccountRegistrar$2;
.super Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;
.source "PhoneAccountRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/PhoneAccountRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization",
        "<",
        "Landroid/telecom/PhoneAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;-><init>()V

    return-void
.end method

.method private useSipForPstnCalls(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sip_call_options"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    const-string v1, "SIP_ALWAYS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "SIP_ADDRESS_ONLY"

    goto :goto_0
.end method


# virtual methods
.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Landroid/telecom/PhoneAccount;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "phone_account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    move v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "account_handle"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    sget-object v3, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    move-object v15, v3

    goto :goto_0

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "handle"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v14, v3

    goto :goto_0

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "subscription_number"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    move-object v13, v3

    goto :goto_0

    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "capabilities"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v12, v3

    goto :goto_0

    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "icon_res_id"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v11, v3

    goto/16 :goto_0

    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "icon_package_name"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto/16 :goto_0

    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "icon_bitmap"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->readBitmap(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_0

    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "icon_tint"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v8, v3

    goto/16 :goto_0

    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "highlight_color"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v7, v3

    goto/16 :goto_0

    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "label"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto/16 :goto_0

    :cond_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "short_description"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_0

    :cond_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v17, "supported_uri_schemes"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->readStringList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ge v0, v3, :cond_e

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v16, "com.android.services.telephony.sip.SipConnectionService"

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->useSipForPstnCalls(Landroid/content/Context;)Z

    move-result v3

    const-string v16, "sip"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_e

    const-string v3, "tel"

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_2
    const/4 v3, 0x5

    move/from16 v0, p2

    if-ge v0, v3, :cond_f

    if-nez v9, :cond_f

    invoke-virtual {v15}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    :cond_f
    invoke-static {v15, v6}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/telecom/PhoneAccount$Builder;->setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/telecom/PhoneAccount$Builder;->setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v3

    if-nez v9, :cond_11

    invoke-virtual {v3, v10, v11, v8}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Ljava/lang/String;II)Landroid/telecom/PhoneAccount$Builder;

    :goto_3
    invoke-virtual {v3}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v3

    :goto_4
    return-object v3

    :cond_10
    const-string v3, "tel"

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "voicemail"

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_11
    invoke-virtual {v3, v9}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Landroid/graphics/Bitmap;)Landroid/telecom/PhoneAccount$Builder;

    goto :goto_3

    :cond_12
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public bridge synthetic readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    return-object v0
.end method

.method public writeToXml(Landroid/telecom/PhoneAccount;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "phone_account"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "account_handle"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->writeToXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    const-string v0, "account_handle"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v0, "handle"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "subscription_number"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "capabilities"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "icon_res_id"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIconResId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "icon_package_name"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIconPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "icon_bitmap"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeBitmapIfNonNull(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "icon_tint"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIconTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "highlight_color"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "label"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "short_description"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "supported_uri_schemes"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeStringList(Ljava/lang/String;Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "phone_account"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method

.method public bridge synthetic writeToXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/telecom/PhoneAccount;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;->writeToXml(Landroid/telecom/PhoneAccount;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    return-void
.end method
