.class Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "SwiftkeyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->onComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;

.field final synthetic val$language:Lcom/touchtype_fluency/util/LanguagePack;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;->this$1:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;

    iput-object p2, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;->val$language:Lcom/touchtype_fluency/util/LanguagePack;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;->this$1:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;

    iget-object v0, v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    const/4 v1, 0x0

    # invokes: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V
    invoke-static {v0, v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1000(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;->this$1:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;

    iget-object v0, v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;->val$language:Lcom/touchtype_fluency/util/LanguagePack;

    # invokes: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->reinstallLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)V
    invoke-static {v0, v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1200(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;Lcom/touchtype_fluency/util/LanguagePack;)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;->this$1:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;

    iget-object v0, v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;->val$language:Lcom/touchtype_fluency/util/LanguagePack;

    # invokes: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->checkDefaultLanguageForSwift(Lcom/touchtype_fluency/util/LanguagePack;)V
    invoke-static {v0, v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1300(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;Lcom/touchtype_fluency/util/LanguagePack;)V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;->this$1:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;

    iget-object v0, v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I
    invoke-static {v0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$900(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;->this$1:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;

    iget-object v0, v0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-virtual {v0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateEngine()I

    :cond_1
    return-void
.end method
