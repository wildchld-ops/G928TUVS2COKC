.class Lcom/android/incallui/SecTabletInCallService$11;
.super Ljava/lang/Object;
.source "SecTabletInCallService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletInCallService;->showPostCharDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletInCallService;

.field final synthetic val$mCallId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletInCallService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService$11;->this$0:Lcom/android/incallui/SecTabletInCallService;

    iput-object p2, p0, Lcom/android/incallui/SecTabletInCallService$11;->val$mCallId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService$11;->val$mCallId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->postDialContinue(Ljava/lang/String;Z)V

    return-void
.end method
