.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postQSButtonClickOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$tile:Lcom/android/systemui/qs/QSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/qs/QSTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->val$tile:Lcom/android/systemui/qs/QSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->val$tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getActionMessageOnCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCoverOpenPopup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    return-void
.end method
