.class Lcom/android/systemui/keyguard/KeyguardViewMediator$3$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->keyguardGone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    return-void
.end method
