.class public Lcom/android/incallui/SelectPhoneSimAccountActivity;
.super Landroid/app/Activity;
.source "SelectPhoneSimAccountActivity.java"


# instance fields
.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/incallui/SelectPhoneSimAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity$1;-><init>(Lcom/android/incallui/SelectPhoneSimAccountActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SelectPhoneSimAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->attemptFinish()V

    return-void
.end method

.method private attemptFinish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "selectPhoneAccountAccounts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->show(Landroid/app/FragmentManager;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
