.class Lcom/android/keyguard/KeyguardPinBasedInputView$13;
.super Landroid/database/ContentObserver;
.source "KeyguardPinBasedInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPinBasedInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$13;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$13;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setOnehandPINView()V

    return-void
.end method
