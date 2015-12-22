.class Lcom/android/keyguard/KeyguardPatternView$15;
.super Landroid/database/ContentObserver;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3400(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method
