.class Lcom/android/incallui/SecCallPopupService$4;
.super Ljava/lang/Object;
.source "SecCallPopupService.java"

# interfaces
.implements Lcom/android/incallui/EcidClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecCallPopupService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$4;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$4;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->onEcidUpdate(Lcom/android/incallui/Call;)V
    invoke-static {v0, p1}, Lcom/android/incallui/SecCallPopupService;->access$1900(Lcom/android/incallui/SecCallPopupService;Lcom/android/incallui/Call;)V

    return-void
.end method
