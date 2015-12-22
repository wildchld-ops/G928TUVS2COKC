.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field final synthetic val$callback:Lcom/android/internal/policy/IKeyguardShowCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;->val$callback:Lcom/android/internal/policy/IKeyguardShowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public screenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;->val$callback:Lcom/android/internal/policy/IKeyguardShowCallback;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->callbackAfterDraw(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$700(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method
