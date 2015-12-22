.class public Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;
.super Lcom/android/incallui/SecAnswerFragment;
.source "SecMirrorlinkAnswerButtonFragment.java"


# static fields
.field private static mAnswerButton:Landroid/widget/ImageButton;

.field private static mInCallButtonViewDriveLink:Landroid/view/ViewGroup;

.field private static mRejectButton:Landroid/widget/ImageButton;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment$1;-><init>(Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Landroid/widget/ImageButton;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mAnswerButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/ImageButton;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mRejectButton:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecAnswerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040055

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecAnswerFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecAnswerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f100107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mInCallButtonViewDriveLink:Landroid/view/ViewGroup;

    const v0, 0x7f100105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mAnswerButton:Landroid/widget/ImageButton;

    const v0, 0x7f100106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mRejectButton:Landroid/widget/ImageButton;

    sget-object v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mAnswerButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mAnswerButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mRejectButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mRejectButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
