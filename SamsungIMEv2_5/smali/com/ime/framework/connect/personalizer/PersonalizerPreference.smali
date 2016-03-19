.class public Lcom/ime/framework/connect/personalizer/PersonalizerPreference;
.super Landroid/preference/Preference;
.source "PersonalizerPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# static fields
.field public static final PERSONALIZERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static h:Landroid/os/Handler;


# instance fields
.field private final ID:I

.field ed:Landroid/content/SharedPreferences$Editor;

.field mContactsConnectModule:Lcom/ime/framework/connect/ContactsConnectModule;

.field mContext:Landroid/content/Context;

.field private mCurrentLocaleString:Ljava/lang/String;

.field private mCurrentTime:Ljava/lang/String;

.field private mDefaultSummary:Ljava/lang/CharSequence;

.field mMessagingConnectModule:Lcom/ime/framework/connect/MessagingConnectModule;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    sget-object v0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "connect_messaging_enable"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "connect_contacts_enable"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "clear_personalised_data"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    invoke-virtual {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    invoke-virtual {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getCurrentTime()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    return-void
.end method

.method private getUpdatedTime()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "messaging_time"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "contacts_time"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    iput-object p1, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    new-instance v0, Lcom/ime/framework/connect/ContactsConnectModule;

    invoke-direct {v0}, Lcom/ime/framework/connect/ContactsConnectModule;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mContactsConnectModule:Lcom/ime/framework/connect/ContactsConnectModule;

    new-instance v0, Lcom/ime/framework/connect/MessagingConnectModule;

    invoke-direct {v0}, Lcom/ime/framework/connect/MessagingConnectModule;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mMessagingConnectModule:Lcom/ime/framework/connect/MessagingConnectModule;

    invoke-virtual {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->getUpdatedTime()V

    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    return-void
.end method

.method private launchPersonalizer()V
    .locals 2

    invoke-direct {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->getCurrentTime()V

    iget v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mMessagingConnectModule:Lcom/ime/framework/connect/MessagingConnectModule;

    invoke-virtual {v0}, Lcom/ime/framework/connect/MessagingConnectModule;->update()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setUpdatedTime()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mContactsConnectModule:Lcom/ime/framework/connect/ContactsConnectModule;

    invoke-virtual {v0}, Lcom/ime/framework/connect/ContactsConnectModule;->update()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setUpdatedTime()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mContactsConnectModule:Lcom/ime/framework/connect/ContactsConnectModule;

    invoke-virtual {v0}, Lcom/ime/framework/connect/ContactsConnectModule;->resetPersonalizedData()S

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setUpdatedTime()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "messaging_time"

    iget-object v2, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "contacts_time"

    iget-object v2, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityDestroy()V
    .locals 0

    return-void
.end method

.method protected onClick()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->launchPersonalizer()V

    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    const-string v0, "SNS"

    const-string v1, "PersonalizerPreference->onPrepareForRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_1
    if-eqz p1, :cond_1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/connect/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
