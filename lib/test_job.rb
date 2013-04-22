class TestJob
  @queue = :test

  def self.enqueue(*args)
    Resque.enqueue(self, *args)
  end

  def self.perform(a)
    sleep(10)
    puts a
  end
end