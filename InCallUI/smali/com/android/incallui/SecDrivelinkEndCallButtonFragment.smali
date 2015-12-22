.class public Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;
.super Lcom/android/incallui/SecCallButtonFragment;
.source "SecDrivelinkEndCallButtonFragment.java"


# static fields
.field private static mCallButton:Lcom/android/incallui/SecDrivelinkButton;

.field private static mMessageButton:Lcom/android/incallui/SecDrivelinkButton;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecCallButtonFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment$1;-><init>(Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->voiceCallClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->messageClicked()V

    return-void
.end method

.method private getNumber()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :cond_0
    return-object v2
.end method

.method private messageClicked()V
    .locals 11

    const/4 v10, 0x0

    const-string v1, "com.sec.android.automotive.drivelink"

    const-string v0, "com.sec.android.automotive.drivelink.message.MessageComposerActivity"

    const-string v2, "userfirstname"

    const-string v3, "usernumber"

    invoke-virtual {p0, v10}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->setEnabled(Z)V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v8, "usernumber"

    iget-object v9, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "userfirstname"

    iget-object v9, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.sec.android.automotive.drivelink"

    const-string v10, "com.sec.android.automotive.drivelink.message.MessageComposerActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startActivity() failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private voiceCallClicked()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->getNumber()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040094

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecCallButtonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f1001ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mCallButton:Lcom/android/incallui/SecDrivelinkButton;

    const v0, 0x7f1001ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mMessageButton:Lcom/android/incallui/SecDrivelinkButton;

    sget-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mCallButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mCallButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mMessageButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mMessageButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-nez p1, :cond_1

    sget-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mCallButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mCallButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mMessageButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecDrivelinkEndCallButtonFragment;->mMessageButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method
