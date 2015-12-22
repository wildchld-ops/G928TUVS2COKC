.class Lcom/android/keyguard/KeyguardSimPinView$3;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView;->setHintOrMessageText(Ljava/lang/CharSequence;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;

.field final synthetic val$defaultSIMHint:Ljava/lang/CharSequence;

.field final synthetic val$resDrawableId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;ILjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->val$resDrawableId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->val$defaultSIMHint:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->val$resDrawableId:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->val$defaultSIMHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
