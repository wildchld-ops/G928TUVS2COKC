.class public Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;
.super Lcom/android/incallui/SecAnswerFragment;
.source "SecDrivelinkAnswerButtonFragment.java"


# static fields
.field private static mAnswerButton:Lcom/android/incallui/SecDrivelinkButton;

.field private static mRejectButton:Lcom/android/incallui/SecDrivelinkButton;


# instance fields
.field private final DB_KEY_DRIVELINK_REJECTMESSAGE_BODY:Ljava/lang/String;

.field private final DB_KEY_DRIVELINK_REJECTMESSAGE_ON:Ljava/lang/String;

.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerFragment;-><init>()V

    const-string v0, "drivelink_rejectmessage_on"

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->DB_KEY_DRIVELINK_REJECTMESSAGE_ON:Ljava/lang/String;

    const-string v0, "drivelink_rejectmessage_body"

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->DB_KEY_DRIVELINK_REJECTMESSAGE_BODY:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment$1;-><init>(Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Lcom/android/incallui/SecDrivelinkButton;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mAnswerButton:Lcom/android/incallui/SecDrivelinkButton;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/incallui/SecDrivelinkButton;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mRejectButton:Lcom/android/incallui/SecDrivelinkButton;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f100105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mAnswerButton:Lcom/android/incallui/SecDrivelinkButton;

    const v0, 0x7f100106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkButton;

    sput-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mRejectButton:Lcom/android/incallui/SecDrivelinkButton;

    sget-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mAnswerButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mAnswerButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mRejectButton:Lcom/android/incallui/SecDrivelinkButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mRejectButton:Lcom/android/incallui/SecDrivelinkButton;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public showQuoteMark(Z)V
    .locals 1

    sget-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mAnswerButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecDrivelinkButton;->showQuoteMark(Z)V

    sget-object v0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mRejectButton:Lcom/android/incallui/SecDrivelinkButton;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecDrivelinkButton;->showQuoteMark(Z)V

    return-void
.end method
