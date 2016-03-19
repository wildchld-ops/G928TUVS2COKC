.class Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$8;
.super Ljava/lang/Object;
.source "AbstractSwiftkeyManager.java"

# interfaces
.implements Lcom/touchtype_fluency/util/PreservationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->trimSwiftkeyMemory(Ljava/util/List;Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

.field final synthetic val$session:Lcom/touchtype_fluency/Session;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Lcom/touchtype_fluency/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$8;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    iput-object p2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$8;->val$session:Lcom/touchtype_fluency/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$8;->val$session:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->trimMemory()V

    return-void
.end method
