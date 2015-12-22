.class public Lcom/android/incallui/SecTabletCallEndButtonVoiceView;
.super Lcom/android/incallui/SecTabletCallButtonView;
.source "SecTabletCallEndButtonVoiceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mAddEventButton:Landroid/widget/Button;

.field private mCreateContactButton:Landroid/widget/Button;

.field private mIsEnabled:Z

.field private mMessageButton:Landroid/widget/Button;

.field private mUnderButtons:Landroid/view/ViewGroup;

.field private mUpdateContactButton:Landroid/widget/Button;

.field private mUpperButtons:Landroid/view/ViewGroup;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVideoCallButtonStub:Landroid/view/ViewStub;

.field private mViewContactButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

.field private mVoiceCallSim1Button:Landroid/widget/Button;

.field private mVoiceCallSim2Button:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private addEventClicked()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getEmail(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "vnd.android.cursor.item/event"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x30000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "event_create"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "title"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addEventClicked title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addEventClicked email : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private changeIconForAttTmo()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v5, 0x40000

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isVTReg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0, v8}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->showVideoCall(Z)V

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02017c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7, v4, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020177

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v5, v7, v2, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02017d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7, v4, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private createContactClicked()V
    .locals 11

    const/16 v10, 0x20

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getNumber()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT"

    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    move-object v3, v1

    const-string v5, " "

    :goto_0
    const-string v7, "name"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "data2"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "data3"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "sip"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_1
    const/high16 v7, 0x30000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v7, "phone"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContext().startActivity() failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getEmail(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "data1"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_4
    return-object v6

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    throw v0
.end method

.method private getNumber()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "emergency_find_lost_phone"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v4, :cond_2

    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "getNumber(), set original number"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "disable_roaming_multi_imsi"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallNumberConverted()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getOriginalNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getPaddingSide(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getPersonId()J
    .locals 7

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    :cond_0
    return-wide v2
.end method

.method private messageClicked()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x10000000

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const-string v6, ""

    invoke-static {v5, v6, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/incallui/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    invoke-static {v5, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "support_oem_message_for_kk"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.android.mms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.app.popupuireceiver"

    const-string v5, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "app_package_name"

    const-string v5, "com.android.mms"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCreateContact(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mCreateContactButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showUpdateContact(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpdateContactButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showVideoCall(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showViewContact(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mViewContactButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateContactClicked()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getNumber()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "hidecreatelabel"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "sip"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v3, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x30000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string v3, "phone"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "phone_type"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SecTabletCallEndButtonVoiceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContext().startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateEndCallButtons()V
    .locals 22

    const-string v18, "SecTabletCallEndButtonVoiceView"

    const-string v19, "updateEndCallButtons()..."

    invoke-static/range {v18 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v18

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v8, :cond_3

    iget-boolean v10, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget-boolean v6, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    iget v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    :cond_2
    const/4 v11, 0x0

    :cond_3
    :goto_1
    const-string v18, "support_safetycare"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSafetyAssistanceMode()Z

    move-result v12

    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isEmergency : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "contactExists : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isNumberExists : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isSafetyAssistanceMode : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_13

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->showCreateContact(Z)V

    if-nez v6, :cond_14

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->showUpdateContact(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->showViewContact(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->arrangeLayoutForVideoCall()V

    if-nez v10, :cond_5

    if-nez v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_15

    :cond_5
    const/4 v9, 0x1

    :goto_4
    const/16 v18, 0x40

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v18

    or-int v9, v9, v18

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mCreateContactButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpdateContactButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mViewContactButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    if-nez v10, :cond_16

    if-eqz v11, :cond_16

    const/4 v7, 0x1

    :goto_5
    const-string v18, "video_call_not_support"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "video_call_button_disable"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->showVideoCall(Z)V

    :cond_8
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    const/16 v18, 0x80

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim1Button:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim1Button:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim2Button:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim2Button:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v14

    const-string v18, "common_volte"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    const-string v18, "feature_kor"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    if-nez v14, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isChecked3GHDVoiceForKT()Z

    move-result v18

    if-eqz v18, :cond_f

    :cond_e
    const/16 v17, 0x0

    const-string v18, "feature_skt"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02015e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const v19, 0x7f0d01be

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(I)V

    const-string v18, "feature_lgt"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_f
    const-string v18, "emergency_find_lost_phone"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getNumber()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/InCallUtils;->isFindServiceNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_0

    :cond_10
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mCreateContactButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpdateContactButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mViewContactButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    iget-object v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    iget-object v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_17
    const-string v18, "us_volte_ui"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "att_volte_ui"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_18

    const-string v18, "tmo_volte_ui"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_18

    const-string v18, "mpcs_volte_ui"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->changeIconForAttTmo()V

    goto/16 :goto_6

    :cond_19
    const/high16 v18, 0x40000

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v15

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v13

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showVideoCall - modifyCall : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / isVTReg: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v7, :cond_1a

    if-eqz v15, :cond_1a

    if-eqz v13, :cond_1a

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->showVideoCall(Z)V

    goto/16 :goto_6

    :cond_1a
    const/16 v18, 0x0

    goto :goto_8

    :cond_1b
    const-string v18, "feature_ktt"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02015c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    goto/16 :goto_7

    :cond_1c
    const-string v18, "feature_lgt"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02015d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    goto/16 :goto_7

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02015a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    goto/16 :goto_7
.end method

.method private updateMultiSimEndCallButton()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallUtilsMultiSIM;->checkMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1001ba

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100095

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim1Button:Landroid/widget/Button;

    const v0, 0x7f100096

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim2Button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->updateMultiSimEndCallButtonDrawable()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateMultiSimEndCallButtonDrawable()V
    .locals 6

    const/16 v5, 0x14

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v5}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v5}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updatePadding()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpperButtons:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUnderButtons:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private updatePaddingInternal(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getPaddingSide(I)I

    move-result v2

    invoke-virtual {p1, v2, v4, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private videoCallClicked()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "videocall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private viewContactClicked()V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getPersonId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x30000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private voiceCallClicked()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private voiceCallClicked(I)V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "telecom"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    const-string v5, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public arrangeLayoutForVideoCall()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpperButtons:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpperButtons:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0477

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpperButtons:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUnderButtons:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUnderButtons:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0476

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUnderButtons:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initView()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallButtonView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f1001af

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpperButtons:Landroid/view/ViewGroup;

    const v1, 0x7f1001b3

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUnderButtons:Landroid/view/ViewGroup;

    const v1, 0x7f1001b5

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v1, 0x7f1001b4

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v1, 0x7f1001b7

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    const-string v1, "change_order_of_endcall_buttons"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const v1, 0x7f1001b6

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButtonStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    const v1, 0x7f100097

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const v1, 0x7f1001b1

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mCreateContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v1, 0x7f1001b2

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpdateContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpdateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpdateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v1, 0x7f1001b0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mViewContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mViewContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mViewContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v1, 0x7f1001b8

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mAddEventButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mAddEventButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mAddEventButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->updateMultiSimEndCallButton()V

    :cond_2
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->changeIconForAttTmo()V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->updateEndCallButtons()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->updatePadding()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    sparse-switch v1, :sswitch_data_0

    const-string v2, "onClick: unexpected"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->voiceCallClicked()V

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->voiceCallClicked(I)V

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->voiceCallClicked(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->videoCallClicked()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->messageClicked()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->createContactClicked()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->updateContactClicked()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->viewContactClicked()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->addEventClicked()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100095 -> :sswitch_1
        0x7f100096 -> :sswitch_2
        0x7f100097 -> :sswitch_3
        0x7f1001b0 -> :sswitch_7
        0x7f1001b1 -> :sswitch_5
        0x7f1001b2 -> :sswitch_6
        0x7f1001b4 -> :sswitch_3
        0x7f1001b5 -> :sswitch_0
        0x7f1001b7 -> :sswitch_4
        0x7f1001b8 -> :sswitch_8
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->voiceCallLongClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001b5
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mIsEnabled:Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mCreateContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpdateContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mUpdateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mViewContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mViewContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mAddEventButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mAddEventButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->mVideoCallButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public voiceCallLongClicked()V
    .locals 6

    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isDeviceOnLTE()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableVoLTE()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.photoring.PhotoRingScreen"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "dest_number"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallEndButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
