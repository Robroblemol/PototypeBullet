class ConcreteEnvironment extends EnvironmentCreator{
  Environment newEnvironment(){
    return new SquareEnvironment();
  }
}
